<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('Public_model');
    $this->load->model('Admin_model');
    is_logged_in();
  }
  public function index()
  {
    $data['title'] = 'My Profile';
    $data['account'] = $this->Public_model->getAllEmployeeData($this->session->userdata['username']);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar');
    $this->load->view('templates/topbar');
    $this->load->view('profile/index', $data);
    $this->load->view('templates/footer');
  }

  public function qrdemo()
  {
    $d['title'] = 'User QR Demo';
    $d['users'] = $this->db->get_where('users', ['username' => $this->session->userdata['username']])->row_array();
    $d['account'] = $this->Admin_model->getAdmin($this->session->userdata['username']);

      $this->load->view('templates/header', $d);
      $this->load->view('templates/sidebar');
      $this->load->view('templates/topbar');
      $this->load->view('profile/qrdemo', $d);
      $this->load->view('templates/footer');    
  }

}
