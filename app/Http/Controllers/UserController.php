<?php

namespace App\Http\Controllers;

use App\User;
use DB;
use DataTables;
use Alert;
use App\Cabang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{


    public function AuthRouteAPI(Request $request)
    {
        return $request->user();
    }

    public function index2()
    {
        return view('auth.login');
    }

    public function index()
    {


        $user = DB::table("users")->where('level', 'admin')->get();
        return view('user.view', compact('user'));
    }

    public function pj()
    {
        $user = DB::table("users")->where('level', 'pj')->get();
        $ruangan = DB::table('ruangan')->get();
        return view('pj.view', compact('user', 'ruangan'));
    }

    public function rayon()
    {

        $user = DB::table("users")->where('level', 'rayon')->get();

        $ruangan = DB::table('ruangan')->get();

        return view('rayon.view', compact('user', 'ruangan'));
    }

    public function bukan_pj()
    {

        $user = DB::table("users")->where('level', 'bukan_pj')->get();

        return view('bukan_pj.view', compact('user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cabang = Cabang::pluck('cabang', 'id');
        $role = Role::pluck('name', 'name');
        return view('user.create', compact('cabang', 'role'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'email' => 'required|unique:users',
            'username' => 'required|unique:users',
        ]);

        $password = Hash::make($request->password);
        $data = array_replace($request->all(), ['password' => $password]);

        $user = User::create($data);
        $user->syncRoles([$request->role]);

        Alert::success('Success', 'Data Telah Terinput');
        return redirect(action('UserController@index'));
    }

    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::findOrFail($id);
        $cabang = Cabang::pluck('cabang', 'id');
        $role = Role::pluck('name', 'name');

        return view('user.edit', compact('user', 'cabang', 'role'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $password = Hash::make($request->password);
        $data = array_replace($request->all(), ['password' => $password]);

        $user = User::find($id);
        $user->update($data);

        Alert::success('Success', 'Data Telah Terupdate');
        return redirect()->route('user.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = User::find($id);
        $data->delete();
        $result['code'] = '200';
        return response()->json($result);
    }

    //pj

    public function store_pj(Request $request)
    {

        $request->validate([
            'email' => 'required|unique:users',
            'username' => 'required|unique:users',
        ]);

        $password = Hash::make($request->password);
        $data = array_replace($request->all(), ['password' => $password]);

        User::create($data);
        Alert::success('Success', 'Data Telah Terinput');
        return redirect()->back();
    }

    public function edit_pj($id)
    {
        $user2 = DB::table('users')->where('id', $id)->first();


        $ruangan = DB::table('ruangan')->get();

        return view('pj.edit', compact('ruangan', 'user2'));
    }

    public function update_pj(Request $request)
    {

        DB::table('users')->where('id', $request->id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'username' => $request->username,

        ]);

        Alert::success('Success', 'Data Telah Terupdate');
        return redirect('/pj');
    }

    //rayon

    public function store_rayon(Request $request)
    {

        $request->validate([
            'email' => 'required|unique:users',
            'username' => 'required|unique:users',
        ]);

        $password = Hash::make($request->password);
        $data = array_replace($request->all(), ['password' => $password]);

        User::create($data);
        Alert::success('Success', 'Data Telah Terinput');
        return redirect()->back();
    }

    public function edit_rayon($id)
    {
        $user2 = DB::table('users')->where('id', $id)->first();


        $ruangan = DB::table('ruangan')->get();

        return view('rayon.edit', compact('ruangan', 'user2'));
    }

    public function update_rayon(Request $request)
    {

        DB::table('users')->where('id', $request->id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'username' => $request->username,

        ]);

        Alert::success('Success', 'Data Telah Terupdate');
        return redirect('/rayon');
    }

    //bukan pj

    public function store_bukan_pj(Request $request)
    {

        $request->validate([
            'email' => 'required|unique:users',
            'username' => 'required|unique:users',
        ]);

        $password = Hash::make($request->password);
        $data = array_replace($request->all(), ['password' => $password]);

        User::create($data);
        Alert::success('Success', 'Data Telah Terinput');
        return redirect()->back();
    }

    public function edit_bukan_pj($id)
    {
        $user2 = DB::table('users')->where('id', $id)->first();


        $ruangan = DB::table('ruangan')->get();

        return view('bukan_pj.edit', compact('ruangan', 'user2'));
    }

    public function update_bukan_pj(Request $request)
    {

        DB::table('users')->where('id', $request->id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'username' => $request->username,

        ]);

        Alert::success('Success', 'Data Telah Terupdate');
        return redirect('/bukan_pj');
    }
}
