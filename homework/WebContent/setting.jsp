<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript">
$(document).ready(
	function() {	
		$('input[name=id]').on(
			'keyup',
			function(event){				                   
                    var id = $('input[name=id]').val();
					if( id ){
							$.ajax(
								{
									type : "POST",
									data : 
										{
											id :  $('input[name=id]').val()
										},
									url : 'idcheck.jsp',
									dataType : 'xml',
									success : function(data){							
										$('.id > col3').val($(data).find('message').text());										
									},
									error : function(e){
										$('.id > col3').val(e.message);											
									}
								}
							);
						}
					} 
				}
				$('input[name=jobpId]').val()
			}			
		);
			
		$('input[name=password]').on(
				'keyup',
				function(event){
				var passwd = $('input[name=passwd]').val()
					if(passwd){
						$('.passwd > col3').val("사용할 수 있는 비밀번호입니다.");
					}else{
						$('.passwd > col3').val("사용할 수 없는 비밀번호입니다.");	
					}					
				}
			);
		
		//비밀번호가 같으면 사용할 수 있다
		//다르면 사용할 수 없다
		$('input[name=repasswd]').on(
			'keyup',
			function(event){
			var repasswd = $('input[name=repasswd]').val();
			if(repasswd){
				if($('input[name=jobpPasswd]').val()== $('input[name=rejobpPasswd]').val()){
					
					$('.repasswd > col3').val('사용할 수 있는 비밀번호입니다.');	
				}else{
					$('.repasswd > col3').val('사용할 수 없는 비밀번호입니다');	
				}
			}
			$('input[name=rejobpPasswd]').val()
			}
		);
		
</script>