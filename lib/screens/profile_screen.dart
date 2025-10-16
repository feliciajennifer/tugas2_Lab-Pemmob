import 'package:flutter/material.dart';
import 'package:anime_verse/widgets/app_scaffold.dart';
import 'package:anime_verse/widgets/profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.06,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.05),
            
            // Profile Photo
            Container(
              width: screenWidth * 0.25,
              height: screenWidth * 0.25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'foto.jpg',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: screenWidth * 0.1,
                      ),
                    );
                  },
                ),
              ),
            ),
            
            SizedBox(height: screenHeight * 0.02),
            
            // Username
            Text(
              "IKLC AnimeVerse",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.055,
              ),
            ),
            
            SizedBox(height: screenHeight * 0.01),
            
            // Email
            Text(
              "iklcanimeverse@gmail.com",
              style: TextStyle(
                color: Colors.white70,
                fontSize: screenWidth * 0.04,
              ),
            ),
            
            SizedBox(height: screenHeight * 0.02),
            
            // Member Since
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.01,
              ),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                borderRadius: BorderRadius.circular(screenWidth * 0.1),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
              child: Text(
                "Member since September 2025",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.035,
                ),
              ),
            ),
            
            SizedBox(height: screenHeight * 0.05),
            
            // Account Settings Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Account Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ),
            ),
            
            SizedBox(height: screenHeight * 0.02),
            
            // Change Username
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04,
                vertical: screenHeight * 0.003, 
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(screenWidth * 0.035),
                border: Border.all(
                  color: Colors.white.withOpacity(0.15),
                  width: 1,
                ),
              ),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(screenWidth * 0.02), 
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: screenWidth * 0.045, 
                  ),
                ),
                title: Text(
                  "Change username",
                  style: TextStyle(
                    fontSize: screenWidth * 0.038, 
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Update your display name",
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    color: Colors.white60,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white60,
                  size: screenWidth * 0.035, 
                ),
                onTap: () {
                  // Handle change username
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03, 
                  vertical: screenHeight * 0.008, 
                ),
                dense: true, 
                minVerticalPadding: 0, 
              ),
            ),
            
            SizedBox(height: screenHeight * 0.010), // Jarak antara change pass dan username
            
            // Change Password 
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04,
                vertical: screenHeight * 0.003, 
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(screenWidth * 0.035),
                border: Border.all(
                  color: Colors.white.withOpacity(0.15),
                  width: 1,
                ),
              ),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(screenWidth * 0.02), 
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  child: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                    size: screenWidth * 0.045, 
                  ),
                ),
                title: Text(
                  "Change password",
                  style: TextStyle(
                    fontSize: screenWidth * 0.038,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Update your account password",
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    color: Colors.white60,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white60,
                  size: screenWidth * 0.035, 
                ),
                onTap: () {
                  // Handle change password
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03, 
                  vertical: screenHeight * 0.008, 
                ),
                dense: true, 
                minVerticalPadding: 0, 
              ),
            ),
            
            SizedBox(height: screenHeight * 0.04),
            
            // App Information Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "App Information",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ),
            ),
            
            SizedBox(height: screenHeight * 0.02),
            
            // About AnimeVerse 
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04,
                vertical: screenHeight * 0.003, 
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(screenWidth * 0.035),
                border: Border.all(
                  color: Colors.white.withOpacity(0.15),
                  width: 1,
                ),
              ),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(screenWidth * 0.02), 
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: screenWidth * 0.045,
                  ),
                ),
                title: Text(
                  "About AnimeVerse",
                  style: TextStyle(
                    fontSize: screenWidth * 0.038, 
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Version 10.0",
                  style: TextStyle(
                    fontSize: screenWidth * 0.03, 
                    color: Colors.white60,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white60,
                  size: screenWidth * 0.035, 
                ),
                onTap: () {
                  // Handle about app
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03, 
                  vertical: screenHeight * 0.008, 
                ),
                dense: true, 
                minVerticalPadding: 0, 
              ),
            ),
            
            SizedBox(height: screenHeight * 0.05),
            
            // Logout Button 
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.05,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 25, 10).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
                child: TextButton.icon(
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: screenWidth * 0.045, 
                  ),
                  label: Text(
                    "Log Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.038, 
                    ),
                  ),
                  onPressed: () {
                    // Handle logout
                    _showLogoutDialog(context);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                    ),
                  ),
                ),
              ),
            ),
            
            SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF0b395e),
          title: Text(
            "Log Out",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            "Are you sure you want to log out?",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Jika klik log out 
                Navigator.of(context).pop();
                // mengarakan ke ogin screen
              },
              child: Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}