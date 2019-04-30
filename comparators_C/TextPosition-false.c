/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/**
 * This class is a comparator for TextPosition operators.  It handles
 * pages with text in different directions by grouping the text based
 * on direction and sorting in that direction. This allows continuous text
 * in a given direction to be more easily grouped together.  
 *
 * @author <a href="mailto:ben@benlitchfield.com">Ben Litchfield</a>
 * @version $Revision: 1.7 $
 */
int compare(int o1_getDir, int o2_getDir, int o1_getXDirAdj, int o2_getXDirAdj, int o1_getYDirAdj, int o2_getYDirAdj,int o1_getHeightDir, int o2_getHeightDir)
    {
        int retval = 0;

        /* Only compare text that is in the same direction. */
        if (o1_getDir < o2_getDir)
        {
            return -1;
        }
        if (o1_getDir > o2_getDir)
        {
            return 1;
        }
        
        // Get the text direction adjusted coordinates
        int x1 = o1_getXDirAdj;
        int x2 = o2_getXDirAdj;
        
        int pos1YBottom = o1_getYDirAdj;
        int pos2YBottom = o2_getYDirAdj;
        // note that the coordinates have been adjusted so 0,0 is in upper left
        int pos1YTop = pos1YBottom - o1_getHeightDir;
        int pos2YTop = pos2YBottom - o2_getHeightDir;

        int aux = pos1YBottom-pos2YBottom;
        int yDifference = aux < 0 ? -aux : aux; // Math.abs
        //we will do a simple tolerance comparison.
        if( yDifference < 1 ||
            (pos2YBottom >= pos1YTop && (pos2YBottom <= pos1YBottom)) ||
            (pos1YBottom >= pos2YTop && (pos1YBottom <= pos2YBottom)))
        {
            if( x1 < x2 )
            {
                retval = -1;
            }
            else {
              if( x1 > x2 )
              {
                retval = 1;
              }
              else
              {
                retval = 0;
              }
            }
        }
        else if( pos1YBottom < pos2YBottom )
        {
            retval = -1;
        }
        else
        {
            return 1;
        }
        return retval;
    }
