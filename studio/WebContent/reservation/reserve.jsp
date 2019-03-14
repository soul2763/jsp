<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../_header.jsp" %>
      <main>
      		<link href='../fullcalendar-3.10.0/fullcalendar.min.css' rel='stylesheet' />
			<link href='../fullcalendar-3.10.0/fullcalendar.print.min.css' rel='stylesheet' media='print' />
			<script src='../fullcalendar-3.10.0/lib/moment.min.js'></script>
			<script src='../fullcalendar-3.10.0/lib/jquery.min.js'></script>
			<script src='../fullcalendar-3.10.0/fullcalendar.min.js'></script>
			
			<script>
			$(document).ready(function() {
				$('#calendar').fullCalendar({ 
					header: { 
						left: 'prev,next today', 
						center: 'title', 
						right: 'month,basicWeek,basicDay'
					}, 
					defaultDate: new Date(),
					navLinks: true, // can click day/week names to navigate views 
					editable: false, 
					eventLimit: true, // allow "more" link when too many events 
					events: [ 
						{ 
							title: 'All Day Event', 
							start: '2019-04-01' 
						}, 
						{ 
							title: 'Long Event', 
							start: '2019-04-07', 
							end: '2019-04-10' 
						}, 
						{ 
							id: 999, 
							title: 'Repeating Event', 
							start: '2019-04-09T16:00:00'
						}
						] 
					});
				});
			</script>
			<div id='calendar'></div>
			<div class="comment">
				<p>
				위 스케줄 보시고 전화 & 카톡 예약문의 바랍니다.
				</p>
			</div>
      </main>
<%@include file="../_footer.jsp" %>
