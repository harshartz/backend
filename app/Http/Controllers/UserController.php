<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Get a list of all users.
     */
    public function index()
    {
        // Fetch all users
        $users = User::all();

        // Return users as JSON response
        return response()->json($users);
    }

    /**
     * Get a single user by ID.
     */
    public function show($id)
    {
        // Fetch user by ID
        $user = User::find($id);

        // Check if user is found
        if ($user) {
            return response()->json($user);
        } else {
            return response()->json(['message' => 'User not found'], 404);
        }
    }

    /**
     * Create a new user.
     */
    public function store(Request $request)
    {
        // Validate input data
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users',
            'password' => 'required|string|min:6',
        ]);

        // Create a new user
        $user = User::create([
            'name' => $validatedData['name'],
            'email' => $validatedData['email'],
            'password' => bcrypt($validatedData['password']), // Hash the password
        ]);

        // Return the created user as a JSON response
        return response()->json($user, 201);
    }

    /**
     * Update an existing user.
     */
    public function update(Request $request, $id)
    {
        // Fetch the user by ID
        $user = User::find($id);

        // Check if user is found
        if ($user) {
            // Validate input data
            $validatedData = $request->validate([
                'name' => 'sometimes|string|max:255',
                'email' => 'sometimes|email|unique:users,email,' . $user->id,
                'password' => 'sometimes|string|min:6',
            ]);

            // Update user fields
            $user->update($validatedData);

            return response()->json($user);
        } else {
            return response()->json(['message' => 'User not found'], 404);
        }
    }

    /**
     * Delete a user.
     */
    public function destroy($id)
    {
        // Fetch the user by ID
        $user = User::find($id);

        // Check if user is found
        if ($user) {
            $user->delete();
            return response()->json(['message' => 'User deleted successfully']);
        } else {
            return response()->json(['message' => 'User not found'], 404);
        }
    }
}
