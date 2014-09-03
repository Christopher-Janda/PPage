<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PersonalPage extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$data['page'] = 'home';
		$data['viewData'] = array();
		$data['viewData']['user'] = $this->page_model->get_User(1);
		$this->load->view('template/template', $data);
	}
	
	public function home()
	{
		$data = array();
		$data['user'] = $this->page_model->get_User(1);
		$html = $this->load->view('home', $data, TRUE);
		header('Content-Type: application/x-json; charset=utf-8');
      	echo(json_encode($html));
	}
	public function skills()
	{
		$data = array();
		$data['skills'] = $this->page_model->get_SkillRanks(1);
		$data['groups'] = $this->page_model->get_SkillGroups();
		$data['rankCount'] = $this->page_model->get_RankCount();
		$html = $this->load->view('skillsView', $data, TRUE);
		header('Content-Type: application/x-json; charset=utf-8');
      	echo(json_encode($html));
		
	}
	public function play()
	{
		$data = array();
		$html = $this->load->view('playView', $data, TRUE);
		header('Content-Type: application/x-json; charset=utf-8');
      	echo(json_encode($html));
	}
	public function projects()
	{
		$data = array();
		$html = $this->load->view('projectsView', $data, TRUE);
		header('Content-Type: application/x-json; charset=utf-8');
      	echo(json_encode($html));
	}
	public function dbConnect()
	{
		
		//$this->load->view('template/header');


		$data = array();
		//$this->load->view('testView', $data);
		//header('Content-Type: application/x-json; charset=utf-8');
      	//echo(json_encode($html));
      	

		//$this->load->view('template/footer');
	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */