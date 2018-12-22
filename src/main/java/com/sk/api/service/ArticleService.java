package com.sk.api.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class ArticleService {

	public static JSONArray getData() {
		String url = "https://static.sportskeeda.com/takehomeproject/feed.json";
		DefaultHttpClient client = new DefaultHttpClient();
		HttpGet get = new HttpGet(url);

		try {
			HttpResponse httpResponse = client.execute(get);
			BufferedReader rd = new BufferedReader(new InputStreamReader(httpResponse.getEntity().getContent()));

			StringBuffer result = new StringBuffer();
			String line = "";
			while ((line = rd.readLine()) != null) {
				result.append(line);
			}

			JSONObject jsonObject = new JSONObject(result.toString());
			JSONObject data = jsonObject.getJSONObject("data");
			System.out.println(data.length());
			JSONArray rows = data.getJSONArray("rows");
			System.out.println(rows);
			JSONArray array = new JSONArray();
			for(int i=0; i< rows.length(); i++) {
				JSONObject val = new JSONObject();
				JSONObject jsonObject2 = (JSONObject) rows.get(i);
				String title = jsonObject2.getString("title");
				String author = jsonObject2.getString("author_name");
				String category = jsonObject2.getString("category");
				val.put("title", title);
				val.put("author", author);
				val.put("category", category);
				array.put(val);
			}
			System.out.println(array.length());
			return array;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	public static void main(String[] args) {
		getData();
	}
}

