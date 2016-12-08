/**
 * 아이디, 비밀번호등 확인하는 js파일
 */
	function idConfirm() {
		if(document.frm.mId.value.length==0){
			alert("아이디를 먼저 입력하세요");
			frm.mId.focus();
			return;
		} else if(document.frm.mId.value.length<6){
			alert("아이디는 6글자 이상 입력하세요");
			document.frm.mId.focus();
			return;
		} else{
			location.href="idConfirm.do?mId="+frm.mId.value;
		}
	}
	function joinInfoConfirm() {
		if(document.frm.mId.value.length==0){
			alert("아이디는 필수 입력사항입니다");
			document.frm.mId.focus();
			return;
		}
		if(document.frm.mId.value.length<6){
			alert("ID는 6글자 이상입니다");
			document.frm.mId.focus();
			return;
		}
		if(document.frm.mPw.value==""){
			alert("비밀번호는 필수 입력사항입니다");
			document.frm.mPw.focus();
			return;
		}
		if(document.frm.mPw.value != document.frm.mPwChk.value){
			alert("비밀번호가 일치하지 않습니다");
			document.frm.mPw.value ="";
			document.frm.mPwChk.value = "";
			document.frm.mPw.focus();
			return;
		}
		if(!document.frm.mName.value){
			alert("이름은 필수 입력사항입니다");
			document.frm.mName.focus();
			return;
		}
		if(!document.frm.mPhone2.value){
			alert("연락처는 필수 입력사항입니다");
			document.frm.mName.focus();
			return;
		}
		if(!document.frm.mPhone3.value){
			alert("연락처는 필수 입력사항입니다");
			document.frm.mName.focus();
			return;
		}
		if(document.frm.mEmail.value==""){
			alert("이메일은 필수 입력사항입니다");
			document.frm.mEmail.focus();
			return;
		}
		document.frm.submit(); //submit 이벤트 강제 발생
	}
	function modifyInfoConfirm() {
		if(document.frm.mPw.value==""){
			alert("비밀번호는 필수 입력사항입니다");
			document.frm.mPw.focus();
			return;
		}
		if(document.frm.mPw.value != document.frm.mPwChk.value){
			alert("비밀번호가 일치하지 않습니다");
			document.frm.mPw.value ="";
			document.frm.mPwChk.value = "";
			document.frm.mPw.focus();
			return;
		}
		if(document.frm.mEmail.value==""){
			alert("이메일은 필수 입력사항입니다");
			document.frm.mEmail.focus();
			return;
		}
		document.frm.submit();
	}
	function findIdInfoConfirm(){
		if(document.frm.mEmail.value==""){
			alert("이메일은 필수 입력사항");
			document.frm.mEmail.focus();
			return;
		}
		if(!document.frm.mPhone2.value){
			alert("연락처는 필수 입력사항");
			document.frm.mName.focus();
			return;
		}
		if(!document.frm.mPhone3.value){
			alert("연락처는 필수 입력사항");
			document.frm.mName.focus();
			return;
		}
		document.frm.submit();
	}
	function findPwInfoConfirm(){
		if(document.frm.mId.value.length==0){
			alert("아이디를 먼저 입력");
			frm.mId.focus();
			return;
		} else if(document.frm.mId.value.length<6){
			alert("아이디는 6글자 이상");
			document.frm.mId.focus();
			return;
		} 
		if(document.frm.mEmail.value==""){
			alert("이메일은 필수 입력사항");
			document.frm.mEmail.focus();
			return;
		}
		document.frm.submit();
	}