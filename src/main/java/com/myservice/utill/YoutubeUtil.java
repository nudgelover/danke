package com.myservice.utill;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

@Component
public class YoutubeUtil {
    public static Object search(String search) throws IOException {
        JSONObject obj = null;

        try {

            String apiurl = "https://www.googleapis.com/youtube/v3/search";
            apiurl += "?part=snippet&maxResults=10";
            apiurl += "&q=" + search + "&type=video";
            apiurl += "&key=AIzaSyDt1256T5G0uEPI2cn9_xy_N1fT-GwC2s8";

            URL url = new URL(apiurl);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");

            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            JSONParser parser = new JSONParser();
            obj = (JSONObject) parser.parse(response.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return obj;
    }

    public static Object getYoutube(JSONObject obj) {
        JSONArray result = new JSONArray();
        JSONArray items = (JSONArray) obj.get("items");
        for(int n=0; n < items.size(); n++){
            Map<String, String> map = new HashMap<>();
            JSONObject video = (JSONObject) items.get(n);
            JSONObject id = (JSONObject) video.get("id");
            String videoId = (String) id.get("videoId");

            JSONObject snippet = (JSONObject) video.get("snippet");
            String publishedAt = (String) snippet.get("publishedAt");
            LocalDateTime published = LocalDateTime.parse(publishedAt, DateTimeFormatter.ISO_DATE_TIME);
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd HH:mm:ss");
            String rdate = published.format(formatter);
            String title = (String) snippet.get("title");
            String description = (String) snippet.get("description");
            JSONObject thumbnails = (JSONObject) snippet.get("thumbnails");
            JSONObject medium = (JSONObject) thumbnails.get("medium");
            String thumbnailUrl = (String) medium.get("url");
            String imageUrl = thumbnailUrl.replace("\\/", "/");
            String channelTitle = (String) snippet.get("channelTitle");

            map.put("index", "youtube_"+n);
            map.put("videoId", videoId);
            map.put("rdate", rdate);
            map.put("title", title);
            map.put("description", description);
            map.put("imageUrl", imageUrl);
            map.put("channelTitle", channelTitle);

            result.add(map);
        }

        return result;
    }
}