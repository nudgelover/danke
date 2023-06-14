package com.myservice.utill;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;

public class MakeQrUtil {

    public static BufferedImage generateQrCodeWithImage(String stdnId, String imagePath, int imageWidth, int imageHeight) {
        try {
            // Generate QR code
            String qrCodeData = stdnId;
            int qrCodeSize = 300;

            Map<EncodeHintType, Object> hints = new HashMap<>();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");

            MultiFormatWriter qrCodeWriter = new MultiFormatWriter();
            BitMatrix bitMatrix = qrCodeWriter.encode(qrCodeData, BarcodeFormat.QR_CODE, qrCodeSize, qrCodeSize, hints);

            // Convert BitMatrix to BufferedImage
            BufferedImage qrCodeImage = toBufferedImage(bitMatrix);

            // Load overlay image
            BufferedImage overlayImage = loadImage(imagePath, imageWidth, imageHeight);

            // Overlay the images
            overlayImages(qrCodeImage, overlayImage);

            return qrCodeImage;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static BufferedImage toBufferedImage(BitMatrix bitMatrix) {
        int width = bitMatrix.getWidth();
        int height = bitMatrix.getHeight();
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Color qrCodeColor = Color.decode("#196698");

        for (int x = 0; x < width; x++) {
            for (int y = 0; y < height; y++) {
                image.setRGB(x, y, bitMatrix.get(x, y) ? qrCodeColor.getRGB() : Color.WHITE.getRGB());
            }
        }

        return image;
    }

    private static BufferedImage loadImage(String imagePath, int imageWidth, int imageHeight) throws IOException {
        // Load the image from the specified path
        BufferedImage image = ImageIO.read(new File(imagePath));

        // Scale the image to the specified dimensions
        Image scaledImage = image.getScaledInstance(imageWidth, imageHeight, Image.SCALE_SMOOTH);

        // Create a new BufferedImage and draw the scaled image onto it
        BufferedImage bufferedImage = new BufferedImage(imageWidth, imageHeight, BufferedImage.TYPE_INT_ARGB);
        Graphics2D graphics = bufferedImage.createGraphics();
        graphics.drawImage(scaledImage, 0, 0, null);
        graphics.dispose();

        return bufferedImage;
    }

    private static void overlayImages(BufferedImage background, BufferedImage overlay) {
        Graphics2D graphics = background.createGraphics();
        int x = (background.getWidth() - overlay.getWidth()) / 2;
        int y = (background.getHeight() - overlay.getHeight()) / 2;
        graphics.drawImage(overlay, x, y, null);
        graphics.dispose();
    }
}
