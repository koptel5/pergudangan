<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Wildside\Userstamps\Userstamps;

class Pegawai extends Model
{
    use Userstamps, SoftDeletes;
    protected $fillable = [
        'nip',
        'nama',
        'hp',
        'jabatan',
        'foto',
        'nama_seksi',
        'nama_bidang',
        'nama_dinas',
    ];
}
