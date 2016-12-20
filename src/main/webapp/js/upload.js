function checkImageType(fileName) {

	var pattern = /jpg|gif|png|jpeg/i;

	return fileName.match(pattern);

}

function getFileInfo(fullName) {

	var fileName, imgsrc, getLink;

	var fileLink;

	if (checkImageType(fullName)) {
		imgsrc = "/teampro123/displayFile.do?fileName=" + fullName; //왠지는 모르겠는데 /bus1 을 앞에다 붙여야함...
		fileLink = fullName.substr(14);

		var front = fullName.substr(0, 12); // /2015/07/01/ 
		var end = fullName.substr(14);

		getLink = "/teampro123/displayFile.do?fileName=" + front + end;
		console.log(getLink);

	} else { //이미지 파일이 아니라면 
		imgsrc = "image/file3.png";
		fileLink = fullName.substr(12);
		getLink = "/teampro123/displayFile.do?fileName=" + fullName;
		console.log(getLink);
	}
	fileName = fileLink.substr(fileLink.indexOf("_") + 1);

	return {
		fileName : fileName,
		imgsrc : imgsrc,
		getLink : getLink,
		fullName : fullName
	};

}