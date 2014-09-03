<div class = "content">
	<h3>
		Below are a list of my various skills and their associated levels.  I am always seeking to increase these levels and to add new ones.
	</h3>
	<?php
		foreach($groups as $group):
		?>
		<h2><?php echo $group->SkillGroup;?></h2>
		<table>
			<tbody>
				<?php
					foreach($skills as $skill):
						if($skill->idSkillGroup == $group->idSkillGroup){
							?>
							<tr>
							<td><?php echo $skill->Skill;?></td>
							<td>
								<progress value = "<?php echo $skill->rank_id;?>" max = "<?php echo $rankCount?>">
								</progress>
							</td>
							</tr>
					<?php
						}
						else continue;
					endforeach;//End foreach $skills
				?>
				
			</tbody>
		</table>			
		<?php
		endforeach;//End foreach $groups
	?>
</div>