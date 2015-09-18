
package com.fisicalab.user;
public class user {
    private String name;
    private String pass;
    private String email;
    private boolean isAutenticated;
    private int id_usr;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the isAutenticated
     */
    public boolean isIsAutenticated() {
        return isAutenticated;
    }

    /**
     * @param isAutenticated the isAutenticated to set
     */
    public void setIsAutenticated(boolean isAutenticated) {
        this.isAutenticated = isAutenticated;
    }

    /**
     * @return the id_usr
     */
    public int getId_usr() {
        return id_usr;
    }

    /**
     * @param id_usr the id_usr to set
     */
    public void setId_usr(int id_usr) {
        this.id_usr = id_usr;
    }
}
