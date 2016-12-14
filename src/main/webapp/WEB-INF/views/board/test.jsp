<%-- 				<c:forEach var="fileList" items="${fileList }">
							<c:if test="${fileList.bId  == board.bId }">
									<div>


								${fileList.bId } ${fileList.fullname } ${fileList.bdate }



<script id="templateAttach" type="text/x-handlebars-template">
<li data-src='{{fullName}}'>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</span>
  </div>
</li>                
</script> 

								<script>
								
								
								var bId = ${board.bId};
								var template = Handlebars.compile($("#templateAttach").html());
								 alert(bId);
								$.getJSON("getAttach/"+bId+".do",function(list){
									$(list).each(function(){
										
										var fileInfo = getFileInfo(this);
										
										var html = template(fileInfo);
										
										 $(".uploadedList").append(html);
										 console.log(html);
									});
								});
								</script>
							
								</div>
							</c:if>
						</c:forEach>
						</c:if> --%>