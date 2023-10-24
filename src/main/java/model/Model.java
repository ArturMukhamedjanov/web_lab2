package model;

import java.beans.JavaBean;
import java.io.Serializable;
import java.util.ArrayList;

@JavaBean
public class Model implements Serializable {

    public static ArrayList<Point> points = new ArrayList<>();

    public void setPoint(Point point){
        points.add(point);
    }
}