package com.cacao.classting.zoom;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class ZoomController {

	@Autowired
	ZoomServiceImpl service;
	
	@RequestMapping(value = "/zoomList")
	public String zoomList(Model model) throws Exception {
		
//		api 호출해서 값을 가져온다.
		String apiUrl = "https://api.zoom.us/v2/users/binson1123@naver.com/meetings";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		httpURLConnection.setRequestProperty("authorization", "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6Ikl0NndnRkR4VGktV2hwQnRqRWpuSXciLCJleHAiOjE2NTM1NjMxMDEsImlhdCI6MTY1MzQ3NjY5OH0.Yr053Ab1Ri2ldS816kgWsKFBS1YMbB5XRkpmHplXZSY");
		
		BufferedReader bufferedReader;
		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line; 
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line : "+line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		System.out.println("stringBuilder.toString() : "+stringBuilder.toString());
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		
		System.out.println("###################################################################");
		
		
		for(String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: "+key + ", [value]: " + value);
		}
		
		List<Zoom> list = new ArrayList<Zoom>();
		list = (List<Zoom>) map.get("meetings");

		model.addAttribute("list",list);
		
		return "/member/classroom/common/zoomList";
	}
	
}
