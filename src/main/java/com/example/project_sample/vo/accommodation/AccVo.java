package com.example.project_sample.vo.accommodation;


import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AccVo {
    int acc_idx;
    String acc_name;
    String acc_location;
    String acc_service;
    String acc_type;
    String acc_cancel;
    String acc_contact;
    int mem_idx;

    List<Acc_PhotoVo> acc_photo_list;

}
