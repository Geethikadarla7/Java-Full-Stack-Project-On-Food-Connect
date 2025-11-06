package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.FoodDonations;
import com.klef.jfsd.springboot.model.FoodDonor;

public interface FoodDonorService {
	public String adddonor(FoodDonor donor);
    public FoodDonor checkdonorlogin(String email,String pswd);
    public String adddonations(FoodDonations donations);
    public String updatedonorprofile(FoodDonor donor);
    public FoodDonor displaydonorbyId(int id);
    public String updatedontations(FoodDonations donations);
    public String deletedonations(int did);
    public List<FoodDonations> viewdonordonations();
  
}
