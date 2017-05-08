/*   
 * Corendal NetApps Wiki - Web application for content management   
 * Copyright (C) Thierry Danard   
 *   
 * This program is free software; you can redistribute it and|or   
 * modify it under the terms of the GNU General Public License   
 * as published by the Free Software Foundation; either version 2   
 * of the License, or (at your option) any later version.   
 *   
 * This program is distributed in the hope that it will be useful,   
 * but WITHOUT ANY WARRANTY; without even the implied warranty of   
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the   
 * GNU General Public License for more details.   
 *   
 * You should have received a copy of the GNU General Public License   
 * along with this program; if not, write to the Free Software   
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.   
 */
package com.corendal.netapps.wiki.interfaces;

/**
 * @version $Id: Pathed.java,v 1.5 2006/06/28 17:01:09 tdanard Exp $
 */
public interface Pathed {
    /** Fully qualified name of this interface. */
    public static final String INTERFACE_NAME = "com.corendal.netapps.wiki.interfaces.Pathed";

    /**
     * Returns the path of this object in the text format.
     * 
     * 
     * 
     * @return a java.lang.String object
     */
    public String getPathText();

    /**
     * Returns the path of this object in the Encoded format.
     * 
     * 
     * 
     * @return a java.lang.String object
     */
    public String getPathEncoded();

    /**
     * Returns the path of this object in the HTML format.
     * 
     * 
     * 
     * @return a java.lang.String object
     */
    public String getPathHTML();

    /**
     * Returns the path of this object in the HTML format with a link for each
     * segment of the path.
     * 
     * 
     * 
     * @return a java.lang.String object
     */
    public String getPathHTMLWithLink();

    /**
     * Returns the path of this object in the HTML format with a link for each
     * segment of the path, except the last one.
     * 
     * 
     * 
     * @return a java.lang.String object
     */
    public String getPathHTMLNoLastLink();
}

// end Pathed
