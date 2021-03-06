package edu.lwtech.csd299.topten;

public class Member {
    
    private int id;             // Database ID (or -1 if it isn't in the database yet)
    private String email;
    private String password;

    public Member(String email, String password) {
        this(-1, email, password);
    }

    public Member(int id, Member member) {
        this(id, member.email, member.password);
    }

    public Member(int id, String email, String password) {

        if (email == null || email.isEmpty()) throw new IllegalArgumentException("Member: email cannot be empty or null");
        if (password == null || password.isEmpty()) throw new IllegalArgumentException("Member: password cannot be empty or null");

        this.id = id;
        this.email = email;
        this.password = password;
    }

    public int getID() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getUserID() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {
        return "[" + email + ", ******** ]";
    }

}