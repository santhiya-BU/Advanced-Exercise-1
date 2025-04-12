<?php
declare(strict_types=1);

namespace App\Controller;


class UsersController extends AppController
{
    public function initialize(): void
    {
        parent::initialize();
        $this->loadComponent('Flash');
        $this->loadModel('Users');
    }

    public function index()
    {
        $users = $this->paginate($this->Users);
        $this->set(compact('users'));
    }

    public function view($id = null)
    {
        $author = $this->Users->get($id); 
        $this->set(compact('users'));
    }

    public function addEdit($id = null)
{
    $user = $id ? $this->Users->get($id) : $this->Users->newEmptyEntity();

    if ($this->request->is(['post', 'put'])) {
        $data = $this->request->getData();
        $profilePicture = $data['profile_picture']; // UploadedFile object

        if ($profilePicture && $profilePicture->getError() === UPLOAD_ERR_OK) {
            $fileName = uniqid() . '_' . $profilePicture->getClientFilename();
            $uploadPath = 'uploads' . DS . 'profile_pictures' . DS;
            $fullPath = WWW_ROOT . $uploadPath;

            // Make sure directory exists
            if (!file_exists($fullPath)) {
                mkdir($fullPath, 0775, true);
            }

            $profilePicture->moveTo($fullPath . $fileName); // Save file

            // Replace file object with its path as string (important!)
            $data['profile_picture'] = $uploadPath . $fileName;
         
        } else {
            // Remove it if empty (avoid trying to store the object)
            unset($data['profile_picture']);
        }

        // Patch user without the UploadedFile object
        $user = $this->Users->patchEntity($user, $data);
 
        // Optional: Hash password if present
        if (!empty($user->password)) {
            $user->password = (new \Cake\Auth\DefaultPasswordHasher())->hash($user->password);
        }
        
        if ($this->Users->save($user)) {
            $this->Flash->success(__('User saved successfully.'));
            return $this->redirect(['action' => 'index']);
        }

        $this->Flash->error(__('Unable to save user.'));
        debug($user->getErrors());
    }

    $this->set(compact('user'));
}





public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        if ($this->Users->delete($user)) {
            $this->Flash->success(__('The user has been deleted.'));
        } else {
            $this->Flash->error(__('Unable to delete the user.'));
        }
        return $this->redirect(['action' => 'index']);
    }


}