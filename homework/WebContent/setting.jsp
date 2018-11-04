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
						$('.passwd > col3').val("����� �� �ִ� ��й�ȣ�Դϴ�.");
					}else{
						$('.passwd > col3').val("����� �� ���� ��й�ȣ�Դϴ�.");	
					}					
				}
			);
		
		//��й�ȣ�� ������ ����� �� �ִ�
		//�ٸ��� ����� �� ����
		$('input[name=repasswd]').on(
			'keyup',
			function(event){
			var repasswd = $('input[name=repasswd]').val();
			if(repasswd){
				if($('input[name=jobpPasswd]').val()== $('input[name=rejobpPasswd]').val()){
					
					$('.repasswd > col3').val('����� �� �ִ� ��й�ȣ�Դϴ�.');	
				}else{
					$('.repasswd > col3').val('����� �� ���� ��й�ȣ�Դϴ�');	
				}
			}
			$('input[name=rejobpPasswd]').val()
			}
		);
		
</script>