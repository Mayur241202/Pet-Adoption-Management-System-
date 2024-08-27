package network;

import java.net.*;

public class getIPAddress {
	public static void main(String[] args) throws UnknownHostException {
		String url = "http://localhost:8082/Pet_Adoption_Management_System/index.html";
		try {
			InetAddress ip = InetAddress.getByName(new URL(url).getHost());
			System.out.println("Public IP Address of " + url + ": " + ip);
		} catch (MalformedURLException e) {
			System.out.println("Invalid URL");
		}
	}
}