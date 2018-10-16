function display_student(){
    document.getElementById("teacher_content").style.cssText="display:none";
    document.getElementById("student_content").style.cssText="display:block";
}

function display_teacher(){
    document.getElementById("teacher_content").style.cssText = "display:block";
    document.getElementById("student_content").style.cssText = "display:none";
}