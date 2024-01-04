package com.IT22581570;

public class Song {
    private int id;
    private String title;
    private String artist;
    private String genre;
    
    public Song(int id, String title, String artist, String genre) {
        this.id = id;
        this.title = title;
        this.artist = artist;
        this.genre = genre;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getArtist() {
        return artist;
    }

    public String getGenre() {
		return genre;
	}

}
