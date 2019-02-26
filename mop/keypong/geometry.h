#ifndef GEOMETRY_H
#define GEOMETRY_H
#include "graphics.h";
typedef struct tPoint{
    unsigned char x;
    unsigned char y;
} POINT;

#define MAX_POINTS 20
typedef struct tGeometry{
    int numpoints;
    int sizex;
    int sizey;
    POINT px[ MAX_POINTS ];
} GEOMETRY, *PGEOMETRY;

GEOMETRY ball_geometry = {
    12, 4, 4,
    { // POINT px[20]
        {0,1}, // px[...]
        {0,2},
        {1,0},
        {1,1},
        {1,2},
        {1,3},
        {2,0},
        {2,1},
        {2,2},
        {2,3},
        {3,1},
        {3,2} // Incomplete initialization
    } // (12 of 20)
};
typedef struct tObj {
    PGEOMETRY geo;
    int dirx,diry;
    int posx,posy;
    void (* draw ) (struct tObj *);
    void (* move ) (struct tObj *);
    void (* set_speed ) (struct tObj *, int, int);
} OBJECT, *POBJECT;

void set_object_speed (POBJECT o, int speedx, int speedy);

void draw_object(POBJECT o);

void move_object(POBJECT o);

void clear_object(POBJECT o);

void set_object_speed (POBJECT o, int speedx, int speedy){
    o->dirx = speedx;
    o->diry = speedy;
}

void draw_object(POBJECT o) {
    for (int i = 0; i< o->geo->numpoints; i++){
        pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y,1);
    }
}

void move_object(POBJECT o){
    //clear_object(o);
    o->posx = o->posx+o->dirx;
    o->posy = o->posy+o->diry;
    if (o->posx < 1){
        o->dirx *= -1;
        o->posx = 1;
    }
    if (o->posx + o->geo->sizex > 128){
        o->dirx *= -1;
        o->posx = 128 - o->geo->sizex;
    }
    
    if (o->posy < 1){
        o->diry *= -1;
        o->posy = 1;
    }
    if (o->posy + o->geo->sizey > 64){
        o->diry *= -1;
        o->posy = 64 - o->geo->sizey;
    }
    draw_object(o);
}

void clear_object(POBJECT o){
    for (int i = 0; i< o->geo->numpoints; i++){
        pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y,0);
    }
}

#endif // GEMOETRY_H