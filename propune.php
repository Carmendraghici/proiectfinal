<?php 
    include 'connect.php';
    $nume='';
    $email='';
    $mesaj='';
    $mess_error='';


    

        if(isset($_POST['send'])){
            // $to='camimaria@ymail.com';

            //$nume =$_POST['name'];
            $email=$_POST['email'];
            $mesaj=$_POST['message'];
            // mail($to, 'Mesaj de la:'.$subject,'E-mailul meu:'.$email,'Mesajul meu: '.$message);

            if(isset($_POST['name']) && !empty($_POST['name'])){
                $nume= trim($_POST['name']);


            }
            else{
                $error = true;
                $mess_error.='The name has not entered!'."<br />";
            }
            if(isset($_POST['email']) && !empty($_POST['email'])){
                if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
                    $mess_error.='The email adress is not valid!';

                }
                else{
                    $email= trim($_POST['email']);
                }
            }
            else{
                $error = true;
                $mess_error.='The email has not been entered!'."<br />";
            }
    
            if(isset($_POST['message']) && !empty($_POST['message'])){
                $mesaj= trim($_POST['message']);


            }
            else{
                $error = true;
                $mess_error.='The message has not entered!'."<br />";
            }


        

            $sql = "INSERT INTO contact (nume, email, mesaj) 
            VALUES ('".$nume."', '".$email."', '".$mesaj."')";
            if (mysqli_query($con, $sql)) {
                $mesaj_success = "Datele au fost introduse cu succes!";
                $db_eroare = false;
            
            } else{
                echo "Error: " . $sql . "<br>" . mysqli_error($con);
            }


            
        
        
        
        }
       
        

   
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
            <li><a href="index.php">Home</a></li>
            <li><a href="tutoriale.php">Tutorials</a></li>
            <li><a href="about.php">About</a></li>
            <li><a href="tablouri.php">Paintings</a></li>
            <li class="active"><a href="propune.php">Contact us</a></li>
            
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
        

        <p>Propose something:</p>
        <?php   if(isset($mess_error) && !empty($mess_error)):?>

            <p>Please fill the empty field!</p>
        <?php endif;?>
        <?php   if(isset($mesaj_success) && !empty($mesaj_success)):?>

<p>The data has been entered successfully!</p>
<?php endif;?>

<div>
    <div style="float:left;">
            <form action="" method="post">
                
            
        
                <ul class="form">
                <li><input type="text" name="name" placeholder="Your name"/></li>
                <li><input type="email" name="email" placeholder="E-mail" /></li>
                <li><textarea rows="17" cols="55" name="message" placeholder="Your proposal"></textarea></li>

                </ul>
                
                
                
                <input type="submit" name="send" value="Send" class="send"/>


            </form>
    </div>
    <div > 
        <img src="images/intrebare.png" style="float:right;margin-top:150px;width:180px" height="auto">
    </div>

</div>
</div>
        <p class="contact" style="clear:both">&nbsp;&nbsp;&nbsp;
            ADRESA STUDIO:str. Doamnei, nr.5, etaj 2, atelier 7, sector 3, Bucuresti, Romania<br>

            &nbsp;&nbsp;&nbsp;TELEFON: 0726 507 302<br>

            &nbsp;&nbsp;&nbsp;E-MAIL: camimaria@ymail.com</p>
        

        
  
        
       






        <br>
        <br>
        <br>
       
        <div class="footer">  
            <p>My Art Project By Draghici Carmen- &copy; Copyright 2020.&nbsp;&nbsp;&nbsp;&nbsp;All rights reserved!</p>
        
        </div>


    
</body>
</html>