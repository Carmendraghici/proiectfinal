<?php 
    include 'connect.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina principala</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
    <div class="icon"><img src="images/header copy.png" width="200px" height="auto"></div>
    <div class="header"><p>My Art Project</p>
    
    </div>
    
    <div class="menu">
        <ul>
            <li class="active"><a href="index.php">Home</a></li>
            <li><a href="tutoriale.php">Tutorials</a></li>
            <li><a href="about.php">About</a></li>
            <li><a href="tablouri.php">Paintings</a></li>
            <li><a href="propune.php">Contact us</a></li>
           
        </ul>
    </div>
    <div class="all">
    <div class="sidebar">

            <p><a href="#" class="cele">The most watched tutorials</a>
                <ul class="lista">
                <li><b><a href="https://www.youtube.com/watch?time_continue=6&v=mmwzmVwIu8U&feature=emb_title;">How to Paint a Rose Acrylics</a></b></li>
                    <li><b><a href="https://www.youtube.com/watch?v=zwzBQzj02eo&t=2s;">Rainy Day Painting</a></b></li>
                    <li><b><a href="https://www.youtube.com/watch?v=gcdku9RzkTU">DIY Watercolor Paint Art Set</a></b></li>
                    <li><b><a href="https://www.youtube.com/watch?v=FOz8q6THZyU">How to Paint a Peony Acrylics</a></b></li>
                    <li><b><a href="https://www.youtube.com/watch?v=xwUsfh50NR0">Simple Acrylic Sunset Painting with Palette Knife in REAL TIME</a></b></li>
                </ul>
                <p>Acrylic painters can modify the appearance, hardness, flexibility, texture, and other characteristics of the paint surface by using acrylic mediums[9] or simply by adding water.</p><p> Watercolor and oil painters also use various mediums, but the range of acrylic mediums.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In hac habitasse platea dictumst. Ut sodales, ex in iaculis aliquam, magna ipsum rutrum mi, vestibulum condimentum neque nulla ac quam. Fusce vel dui et turpis blandit placerat consequat vitae nunc. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>



        </p>
    </div>
    <div class="content">
        <?php 
        $id=(int)$_GET['id'];
        $sql = "SELECT *FROM articles WHERE id_article='{$id}'";
        $result = mysqli_query($con, $sql);
       
        while ($row = $result->fetch_assoc()) {
        echo $row['title']. '<br> <br>';
        echo '<p><img src="'.$row['img_post'].'"></p>';
        
        echo $row['content'];
        
    
    
    }
        
        
        
        
        ?>

        
    </div>
    <div class="footer">
    <p>My Art Project By Draghici Carmen- &copy; Copyright 2020.&nbsp;&nbsp;&nbsp;&nbsp;All rights reserved!</p>
        
        </div>
    
</body>
</html>