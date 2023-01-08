injuries = {};
window.addEventListener("message", (event) => {
  if (event.data.type === "ui") {
    if(event.data.display == true) {
    $("#container").show();
    document.getElementById("container").style.display = "flex";
    injuries = event.data.injuries;
    //for each injury in the injuries table, create a new div with the injury name and damage type
    console.log(event.data);
    for (var i = 0; i < injuries.length; i++) {
      $("#lista").append(
        "<div class='injury' id='injury" +
          i +
          "'>" +
          dictHumanReadable[injuries[i].Name] + " - " +
          injuries[i].Name +
          " - <span style='color: green;'>" +
          injuries[i].DamageType +
          "</span></div>"
      );
      ChangeColor(injuries[i].Name);
    }
  } else {
    $("#container").hide();
    document.getElementById("container").style.display = "none";
  }
}
});

document.onkeyup = data => {
  if (data.key === "Escape") {
    $("#container").fadeOut(500);
    document.getElementById("container").style.display = "none";
    $.post('https://esx_1injuries/closeUi');
    $("#lista").empty();
    ChangeColorBack();
  }
};

function ChangeColorBack() {
  for (var i = 0; i < injuries.length; i++) {
    var divs = document.getElementsByClassName(dictUI[injuries[i].Name]);
    for (var j = 0; j < divs.length; j++) {
      divs[j].style.fill = "black";
    }
  }
}
function ChangeColor(name) {
  var divs = document.getElementsByClassName(dictUI[name]);
  for (var i = 0; i < divs.length; i++) {
    divs[i].style.fill = "red";
  }
}

var dictHumanReadable = {
  Everything: "Całe ciało",
  SKEL_Pelvis: "Miednica",
  SKEL_L_Thigh: "Lewe udo",
  SKEL_L_Calf: "Lewa łydka",
  SKEL_L_Foot: "Lewa stopa",
  IK_L_Foot: "Lewa stopa",
  PH_L_Foot: "Lewa stopa",
  MH_L_Knee: "Lewe kolano",
  SKEL_R_Thigh: "Prawe udo",
  SKEL_R_Calf: "Prawa łydka",
  SKEL_R_Foot: "Prawa stopa",
  IK_R_Foot: "Prawa stopa",
  PH_R_Foot: "Prawa stopa",
  MH_R_Knee: "Prawe kolano",
  RB_L_ThighRoll: "Lewa łydka",
  RB_R_ThighRoll: "Prawa łydka",
  SKEL_Spine_Root: "Plecy",
  SKEL_Spine0: "Klatka piersiowa",
  SKEL_Spine1: "Klatka piersiowa",
  SKEL_Spine2: "Klatka piersiowa",
  SKEL_Spine3: "Klatka piersiowa",
  SKEL_L_Clavicle: "Lewa łopatka",
  SKEL_L_UpperArm: "Lewe ramie",
  SKEL_L_Forearm: "Lewe przedramie",
  SKEL_L_Hand: "Lewa dłoń",
  IK_L_Hand: "Lewa dłoń",
  PH_L_Hand: "Lewa dłoń",
  MH_L_Elbow: "Lewy łokieć",
  RB_L_ForeArmRoll: "Lewe przedramie",
  RB_L_ArmRoll: "Lewe ramie",
  SKEL_R_Clavicle: "Prawa łopatka",
  SKEL_R_UpperArm: "Prawe ramie",
  SKEL_R_Forearm: "Prawe przedramie",
  SKEL_R_Hand: "Prawa dłoń",
  IK_R_Hand: "Prawa dłoń",
  PH_R_Hand: "Prawa dłoń",
  MH_R_Elbow: "Prawy łokieć",
  RB_R_ForeArmRoll: "Prawe przedramie",
  RB_R_ArmRoll: "Prawe ramie",
  SKEL_Neck_1: "Kark",
  SKEL_Head: "Głowa",
  IK_Head: "Głowa",
  FACIAL_facialRoot: "Głowa",
  FB_L_Brow_Out_000: "Głowa",
  FB_L_Lid_Upper_000: "Głowa",
  FB_L_Eye_000: "Głowa",
  FB_L_CheekBone_000: "Głowa",
  FB_L_Lip_Corner_000: "Głowa",
  FB_R_Lid_Upper_000: "Głowa",
  FB_R_Eye_000: "Głowa",
  FB_R_CheekBone_000: "Głowa",
  FB_R_Brow_Out_000: "Głowa",
  FB_R_Lip_Corner_000: "Głowa",
  FB_Brow_Centre_000: "Głowa",
  FB_UpperLipRoot_000: "Głowa",
  FB_UpperLip_000: "Głowa",
  FB_L_Lip_Top_000: "Głowa",
  FB_R_Lip_Top_000: "Głowa",
  FB_Jaw_000: "Głowa",
  FB_LowerLipRoot_000: "Głowa",
  FB_LowerLip_000: "Głowa",
  FB_L_Lip_Bot_000: "Głowa",
  FB_R_Lip_Bot_000: "Głowa",
  FB_Tongue_000: "Głowa",
  RB_Neck_1: "Kark",
  IK_Root: "Całe ciało",
};

var dictUI = {
  Everything: "everything",
  SKEL_Pelvis: "belly",
  SKEL_L_Thigh: "thigh-left",
  SKEL_L_Calf: "calf-left",
  SKEL_L_Foot: "feet-left",
  IK_L_Foot: "feet-left",
  PH_L_Foot: "feet-left",
  MH_L_Knee: "knee-left",
  SKEL_R_Thigh: "thigh-right",
  SKEL_R_Calf: "calf-right",
  SKEL_R_Foot: "feet-right",
  IK_R_Foot: "feet-right",
  PH_R_Foot: "feet-right",
  MH_R_Knee: "knee-right",
  RB_L_ThighRoll: "thigh-left",
  RB_R_ThighRoll: "thigh-right",
  SKEL_Spine_Root: "chest",
  SKEL_Spine0: "belly",
  SKEL_Spine1: "ribs",
  SKEL_Spine2: "chest",
  SKEL_Spine3: "chest",
  SKEL_L_Clavicle: "shoulder-left",
  SKEL_L_UpperArm: "arm-left",
  SKEL_L_Forearm: "forearm-left",
  SKEL_L_Hand: "hand-left",
  IK_L_Hand: "hand-left",
  PH_L_Hand: "hand-left",
  MH_L_Elbow: "elbow-left",
  RB_L_ForeArmRoll: "forearm-left",
  RB_L_ArmRoll: "arm-left",
  SKEL_R_Clavicle: "shoulder-right",
  SKEL_R_UpperArm: "arm-right",
  SKEL_R_Forearm: "forearm-right",
  SKEL_R_Hand: "hand-right",
  IK_R_Hand: "hand-right",
  PH_R_Hand: "hand-right",
  MH_R_Elbow: "elbow-right",
  RB_R_ForeArmRoll: "forearm-right",
  RB_R_ArmRoll: "arm-right",
  SKEL_Neck_1: "neck",
  SKEL_Head: "head",
  IK_Head: "head",
  FACIAL_facialRoot: "head",
  FB_L_Brow_Out_000: "head",
  FB_L_Lid_Upper_000: "head",
  FB_L_Eye_000: "head",
  FB_L_CheekBone_000: "head",
  FB_L_Lip_Corner_000: "head",
  FB_R_Lid_Upper_000: "head",
  FB_R_Eye_000: "head",
  FB_R_CheekBone_000: "head",
  FB_R_Brow_Out_000: "head",
  FB_R_Lip_Corner_000: "head",
  FB_Brow_Centre_000: "head",
  FB_UpperLipRoot_000: "head",
  FB_UpperLip_000: "head",
  FB_L_Lip_Top_000: "head",
  FB_R_Lip_Top_000: "head",
  FB_Jaw_000: "head",
  FB_LowerLipRoot_000: "head",
  FB_LowerLip_000: "head",
  FB_L_Lip_Bot_000: "head",
  FB_R_Lip_Bot_000: "head",
  FB_Tongue_000: "head",
  RB_Neck_1: "neck",
  IK_Root: "everything",
};