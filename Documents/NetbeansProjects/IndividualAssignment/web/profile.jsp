<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - NUR ANISSA SYUHADA</title>
    <style>
        :root {
            --moss: #5a7d5a;
            --forest: #3a5a3a;
            --clay: #a67c52;
            --sand: #d9c7b8;
            --stone: #8a7f68;
            --soil: #6b5b3d;
            --leaf: #8fa389;
            --pale: #f5f1e8;
            --charcoal: #2c2c2c;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Georgia', serif;
            background-color: var(--pale);
            color: var(--charcoal);
            line-height: 1.5;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            background-image: 
                radial-gradient(circle at 10% 20%, rgba(139, 115, 85, 0.05) 0%, transparent 20%),
                radial-gradient(circle at 90% 80%, rgba(90, 125, 90, 0.05) 0%, transparent 20%);
        }
        
        .container {
            max-width: 900px;
            width: 100%;
            margin: 0 auto;
        }
        
        header {
            text-align: center;
            margin-bottom: 30px;
            padding: 20px 0;
            border-bottom: 1px dashed var(--stone);
            position: relative;
        }
        
        header::after {
            content: '✎';
            position: absolute;
            bottom: -12px;
            left: 50%;
            transform: translateX(-50%);
            background: var(--pale);
            padding: 0 10px;
            color: var(--stone);
            font-size: 14px;
        }
        
        .logo {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.2rem;
            color: var(--forest);
            margin-bottom: 5px;
            letter-spacing: 0.5px;
        }
        
        h1 {
            font-family: 'Playfair Display', serif;
            font-size: 1.8rem;
            font-weight: 600;
            color: var(--forest);
            margin-bottom: 8px;
        }
        
        .subtitle {
            color: var(--soil);
            font-size: 1rem;
            max-width: 600px;
            margin: 0 auto;
            font-style: italic;
        }
        
        .profile-card {
            background: white;
            border-radius: 2px;
            box-shadow: 
                0 2px 5px rgba(0,0,0,0.1),
                0 5px 15px rgba(0,0,0,0.05),
                inset 0 1px 0 rgba(255,255,255,0.8);
            overflow: hidden;
            margin-bottom: 30px;
            border: 1px solid rgba(139, 115, 85, 0.2);
            background-image: linear-gradient(to bottom, rgba(255,255,255,0.9) 0%, rgba(245,241,232,0.7) 100%);
            position: relative;
        }
        
        .profile-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(to right, var(--moss), var(--clay));
            border-radius: 2px 2px 0 0;
        }
        
        .profile-header {
            background: linear-gradient(135deg, var(--moss), var(--forest));
            color: white;
            padding: 30px;
            text-align: center;
        }
        
        .avatar {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.2);
            margin: 0 auto 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
            border: 3px solid rgba(255, 255, 255, 0.3);
        }
        
        .profile-name {
            font-family: 'Playfair Display', serif;
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 5px;
        }
        
        .profile-id {
            font-size: 0.9rem;
            opacity: 0.9;
        }
        
        .profile-body {
            padding: 30px;
        }
        
        .section {
            margin-bottom: 30px;
        }
        
        .section:last-child {
            margin-bottom: 0;
        }
        
        .section-title {
            font-family: 'Playfair Display', serif;
            font-size: 1.1rem;
            font-weight: 600;
            color: var(--forest);
            margin-bottom: 15px;
            padding-bottom: 8px;
            border-bottom: 1px dashed var(--stone);
            display: flex;
            align-items: center;
        }
        
        .section-title::before {
            content: "";
            display: inline-block;
            width: 4px;
            height: 16px;
            background: var(--leaf);
            margin-right: 10px;
            border-radius: 2px;
        }
        
        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 15px;
        }
        
        .info-item {
            display: flex;
            flex-direction: column;
        }
        
        .info-label {
            font-size: 0.85rem;
            color: var(--soil);
            margin-bottom: 5px;
            font-weight: 500;
        }
        
        .info-value {
            font-weight: 500;
            padding: 8px 12px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 3px;
            border-left: 3px solid var(--leaf);
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.05);
        }
        
        .hobbies {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }
        
        .hobby-tag {
            background: rgba(255, 255, 255, 0.7);
            color: var(--charcoal);
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 0.85rem;
            border: 1px solid var(--sand);
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.05);
        }
        
        .intro-box {
            background: rgba(255, 255, 255, 0.7);
            padding: 15px;
            border-radius: 3px;
            line-height: 1.6;
            border-left: 3px solid var(--leaf);
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.05);
        }
        
        .actions {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }
        
        .btn {
            padding: 12px 25px;
            border-radius: 3px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 0.95rem;
            border: none;
            font-family: 'Georgia', serif;
        }
        
        .btn-secondary {
            background: white;
            color: var(--forest);
            border: 1px solid var(--forest);
            box-shadow: 0 2px 5px rgba(58, 90, 58, 0.2);
        }
        
        .btn-secondary:hover {
            background: var(--pale);
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(58, 90, 58, 0.3);
        }
        
        .success-message {
            background: rgba(143, 163, 137, 0.2);
            color: var(--forest);
            padding: 12px 16px;
            border-radius: 3px;
            margin-bottom: 30px;
            display: flex;
            align-items: center;
            border-left: 4px solid var(--moss);
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.05);
        }
        
        footer {
            text-align: center;
            margin-top: 40px;
            padding-top: 20px;
            border-top: 1px dashed var(--stone);
            color: var(--stone);
            font-size: 0.9rem;
        }
        
        .hand-drawn {
            position: absolute;
            opacity: 0.7;
            pointer-events: none;
        }
        
        .hand-drawn-1 {
            top: 15px;
            right: 15px;
            width: 40px;
            height: 40px;
            border: 2px solid var(--leaf);
            border-radius: 50%;
            transform: rotate(15deg);
        }
        
        .hand-drawn-2 {
            bottom: 20px;
            left: 20px;
            width: 25px;
            height: 25px;
            border: 2px solid var(--clay);
            border-radius: 50%;
            transform: rotate(-10deg);
        }
        
        @media (max-width: 768px) {
            .profile-body {
                padding: 20px;
            }
            
            .info-grid {
                grid-template-columns: 1fr;
            }
        }
        
        @media (max-width: 480px) {
            .profile-header {
                padding: 20px;
            }
            
            h1 {
                font-size: 1.5rem;
            }
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Georgia&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <header>
            <div class="logo">STUDENT PROFILE</div>
            <h1>Profile Details</h1>
            <p class="subtitle">Your information has been successfully submitted</p>
        </header>
        
        <div class="success-message">
            ✓ Profile information submitted successfully!
        </div>
        
        <div class="profile-card">
            <div class="hand-drawn hand-drawn-1"></div>
            <div class="hand-drawn hand-drawn-2"></div>
            
            <div class="profile-header">
                <div class="avatar">👤</div>
                <h2 class="profile-name">${name}</h2>
                <p class="profile-id">${studentId}</p>
            </div>
            
            <div class="profile-body">
                <div class="section">
                    <h3 class="section-title">Personal Information</h3>
                    <div class="info-grid">
                        <div class="info-item">
                            <span class="info-label">Full Name</span>
                            <div class="info-value">${name}</div>
                        </div>
                        <div class="info-item">
                            <span class="info-label">Student ID</span>
                            <div class="info-value">${studentId}</div>
                        </div>
                        <div class="info-item">
                            <span class="info-label">Program</span>
                            <div class="info-value">${program}</div>
                        </div>
                        <div class="info-item">
                            <span class="info-label">Email Address</span>
                            <div class="info-value">${email}</div>
                        </div>
                    </div>
                </div>
                
                <div class="section">
                    <h3 class="section-title">Hobbies & Interests</h3>
                    <div class="hobbies">
                        <% 
                            String hobbies = (String) request.getAttribute("hobbies");
                            if (hobbies != null && !hobbies.trim().isEmpty()) {
                                String[] hobbiesArray = hobbies.split(",");
                                for (String hobby : hobbiesArray) {
                        %>
                            <span class="hobby-tag"><%= hobby.trim() %></span>
                        <% 
                                }
                            } else { 
                        %>
                            <span class="hobby-tag">No hobbies specified</span>
                        <% } %>
                    </div>
                </div>
                
                <div class="section">
                    <h3 class="section-title">About Me</h3>
                    <div class="intro-box">
                        <% 
                            String intro = (String) request.getAttribute("introduction");
                            if (intro != null && !intro.trim().isEmpty()) {
                        %>
                            <%= intro %>
                        <% } else { %>
                            No introduction provided.
                        <% } %>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="actions">
            <a href="index.html" class="btn btn-secondary">← Back to Form</a>
        </div>
        
        <footer>
            <p>NUR ANISSA SYUHADA | 205182621 | Individual Assignment</p>
        </footer>
    </div>
</body>
</html>