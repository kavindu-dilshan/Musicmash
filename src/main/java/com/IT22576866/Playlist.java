package com.IT22576866;

public class Playlist {
	private int playlistId;
	private String pListName;
	private String description;

	public Playlist(int playlistId, String pListName, String description) {
		
		this.playlistId = playlistId;
		this.pListName = pListName;
		this.description = description;
	}

	public int getPlaylistId() {
		return playlistId;
	}

	public String getpListName() {
		return pListName;
	}

	public String getDescription() {
		return description;
	}

	
}
