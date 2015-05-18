This directory contains XML transcription files produced by the Archimedes Palimpsest project. The project's original README, including the terms of use, is below.

-- 18 May 2015

=======================================================
 Archimedes Palimpsest Digital Release README Document
=======================================================

:Authors: Mike Toth, Doug Emery
:Date: October 29, 2008 

.. contents::
..
   1 Rights and Conditions of Use
   2 Intended Audience and Consumers
   3 Digital Project Data Set Purpose
   4 Data Set Contents
     4.1 Core Data Content
     4.2 Documentation
       4.2.1 External Documentation
       4.2.2 Internal Documentation
     4.3 Supporting Functional Files
     4.4 Supplemental Files
     4.5 Contributed Research Files
   5 How to Use This Data Set
     5.1 General Orientation
     5.2 Metadata
     5.2 Computer Access Tools
     5.3 Scientific Information

1 Rights and Conditions of Use
===============================

The Archimedes Palimpsest data is released with license for use under
Creative Commons Attribution 3.0 Unported Access Rights. It is
requested that copies of any published articles based on the
information in this data set be sent to The Curator of Manuscripts,
The Walters Art Museum, 600 North Charles Street, Baltimore MD 21201.

2 Intended Audience and Consumers
=================================

The Archimedes Palimpsest Digital Product is intended to serve any
interested user or party.  However, its content is focused on serving
the following groups.

 1. Scholars of Greek and mathematics
 2. Application providers
 3. Libraries and archives
 4. Image scientists, and scientists in other disciplines interested
    in the production of the images
 
3 Digital Project Data Set Purpose
==================================

The Archimedes Palimpsest Digital Product provides all the digital
information available on the Archimedes Palimpsest in a single digital
data set, with a standard structure.  Its purposes are threefold:
 
 1. Serve as the authoritative digital data set of images in a
    standardized format that meets the needs of users, information
    providers, archives and libraries.
 
 2. Provide derived information (i.e. transcriptions, processing
    information) in the context of digital images of the original
    manuscript in a single integrated package.
 
 3. Offer a standard product sustainable by users to which current or
    future contributors can add additional standardized information
    (e.g. alternate texts, image analyses or conservation
    information).


4 Data Set Contents
====================

This data set consists of:

  1. a *core* content set digital images and transcriptions of the
     Archimedes Palimpsest, each with accompanying metadata and
     checksums

  2. project-generated and third-party documentation of all included
     components

  3. supporting functional files, including XML schemas, and cascading
     style sheet files

  4. supplemental versions of the transcriptions by treatise and work

  5. a directory for researcher contributed content files, not a part
     of the core data set


4.1 Core Data Content
---------------------

The core content of images and supporting transcriptions is the focus
of the Digital Product.  For each folio, a comprehensive set of
registered images is provided of the palimpsest.  Available
transcriptions are provided to support use of the images.  

For this release, the core data includes:

  a. Image data consisting of large 8-bit image files, including
     requantized raw images, processed pseudo-color images, registered
     Heiberg images andregistered XRF images. All these files include
     embedded metadata and metadata files.

  b. A set of TEI (Text Encoding Initiative) conformant XML tagged
     Unicode transcriptions from all Archimede and Hyperides texts,
     including embedded metadata and associated metadata files.

  c. Spatially mapped transcriptions for each palimpsest folio of the
     Archimedes and Hyperides texts.

 
For each folio in the palimpsest, the data set provides:

 * All eight-bit raw and processed registered TIFF images for the
   directory’s folio, including XRF images or images of prints of
   Heiberg’s 1906 photographs, when they exist, images of photographs
   of an unfoliated palimpsest leaf from Cambridge University, and an
   image a negative of folio 57v from the University of Chicago.
 * For all of the Archimedes and available Hyperides texts, an XML
   encoded transcription of the directory’s folio spatially mapped to
   all the registered images in the directory
 * An XML metadata file for each of the TIFF files in the directory
   [forthcoming]
 * An MD5 checksum file for each of the TIFF and XML content files

All file names follow strict naming conventions to facilitate easy
identification of file type and content.

The core content set contains folio-by-folio versions of the
Netz-Wilson transcriptions of the Archimedes texts, and of the
Hyperides texts transcriptions and line-by-line text-to-image spatial
mappings in integrated files.  These files collect in one place
transcription mapping data for all images of a single undertext folio.

In addition to its images and transcriptions, each content directory
provides preservation information in the form of:

 * Metadata embedded in image files
 * XML metadata files for each image [forthcoming]
 * Metadata embedded in the mapped transcription file
 * MD5 checksum data for all TIFF and XML files to ensure their fixity

The metadata for images and transcriptions complies with the
Archimedes Palimpsest project metadata standards, which are provided
with this set as documentation.  The metadata provides investigative,
data sharing and scientific information on the images and
transitions.

Metadata are data elements about the content, quality, condition, and
other characteristics of the data sets that make up the digital
holdings. Metadata records are produced according to rules and
definitions governing several subtypes:

 1. Identification Information
 2. Spatial Data Reference Information (images and spatial indexes,
    only)
 3. Imaging and Spectral Data Reference Information (images only)
 4. Data Type Information
 5. Data Content Information
 6. Metadata Reference Information 

4.2 Documentation
-----------------

Documents are provided to fully describe the contents of the data set
and facilitate their use.  There are both *external* and *internal*
documents.  External documents detail data standards, file
specifications, and technologies used by the project, such as the TIFF
specification, MD5 checksum algorithm, and various XML-related
technologies.  Internal documents detail project data standards and
practices, image processing algorithms, and information required to
use the data set not detailed in the external documentation.

4.2.1 External Documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

External documentation includes:

 * ASCII specification [forthcoming]
 * CSS 2.0
 * Dublin Core [forthcoming]
 * GNU TAR file archive algorithm [TBD]
 * GZIP file compression algorithm [TBD]
 * HTML 4.0
 * MD5 hash - rfc1321.txt
 * PDF 1.7
 * RELAX NG 
 * TIFF 6.0
 * XML 1.0 
 * XML Schema
 * XSL 1.0 
 * Unicode
   - Unicode Code charts
   - Unicode specifications and technical reports
 * ZIP file format specification 6.3.2

4.2.2 Internal Documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Internal documentation includes:
 
 * Archie Image Manipulation software documentation
   - Manual [to be updated]
   - Algorithms employed [forthcoming]
   - C code [TBD]
 * File Naming Conventions 
 * Folio Index
 * MD5 How-To
 * Metadata Data Dictionary [forthcoming]
 * Metadata How-To [TBD]
 * Metadata Standard
 * Transcription Integration Plan
 * Transcription Metadata Standard
 * Scientific documents describing:
   - Spectral image capture techniques [forthcoming]
   - XRF image capture techniques [forthcoming]
   - Image processing [forthcoming]
 * XRF Metadata Extensions

4.3 Supporting Functional Files
-------------------------------

The data set provides supporting files needed to share or work with
the Digital Product content data.  Primarily these files are XML
schema documents used to validate and process transcription, spatial
index, and metadata files in XML format.  The following supporting
file collections are included.

 * Archimedes-Palimpsest: Custom XML schema files for working with
   project metadata XML files and custom mapped transcription formats
   [forthcoming]

 * TEI: Documentation and XML schema files for the TEI guidelines

 * Dublin-Core: XML schema files for the Dublin Core metadata elements

 * CHS: RELAX NG schemas for Center for Hellenic Studies spatial
   indexing XML files


4.4 Supplemental Files
----------------------

The purpose of the Supplemental material is to provide alternate
presentations of XML-encoded data for scholars, application
developers, and other interested parties who may want to use them.

It contains “master” files created for the transcription and spatial
mapping efforts.  For each work there may be:

 * TEI XML-encoded transcripts

   - All Archimedes works have a Netz-Wilson transcription

   - Heiberg transcriptions are provided for the Archimedes texts On
     Floating Bodies, On Spiral Lines, and Sphere and Cylinder

   - Hyperides transcriptions are included

 * XML-encoded line-by-line mappings of transcriptions to images

The combined folio-by-folio spatially mapped transcriptions files
included in the core data set have been derived via XSL transformation
from the transcription and mapping files.

4.5 Contributed Research Files
------------------------------

This Contributed Research data is intended initially to include useful
and specialized images contributed to the project by image scientists.
These are images useful to scholars, but not integrated into the core
data set because, for example, they are not registered to core image
dimensions or they are not accompanied by complete metadata.  Over the
life of the data set, this directory may be used to include carefully
vetted contributions that provide critical contributions to the data
set, such as conservation, codicological, and other information.

This component includes experimental diagrams, and may later contain
close-up images of special regions of interest and images captured or
processed using experimental techniques.

5 How to Use This Data Set
==========================

This data set contains supporting documentation to enable discovery of
the data and available access tools.  The files named below may be
located by using the file 1_FileList.txt which accompanies this ReadMe
file.

5.1 General Orientation
-----------------------

For General Orientation to the data set, see

 * 0_ReadMe.txt: this file

 * 1_FileIndex.txt: list of files in the data set

 * FileNamingConventions.txt: a description of naming conventions for
   image, XML, and MD5 files

 * FolioIndex.txt: a list of the Archimedes Palimpsest folios by work,
   undertext folio, and Euchologion folio

 * MD5_README.txt: a brief how-to on using MD5 files to confirm the
   integrity of content files

 * TBD: A lay description to the image types.

5.2 Metadata
------------

Metadata information for the images and transcriptions is described in
several supporting documents.

 * Image_Metadata_Standard.pdf: The projects imaging metadata standard
   document.

 * Image_Metadata_Standard_XRF_Extensions.pdf: Extensions to the
   metadata standard to support XRF imaging

 * Transcription_Metadata_Standard.pdf: Metadata elements for
   transcriptions and spatial mappings of transcriptions to images

 * Transcription_Metadata_Mapping.txt: A mapping between
   project-selected Dublin Core identification elements and TEI header
   elements used for metadata in the transcription files

 * MetadataDataDictionary.txt: A complete dictionary of the metadata
   elements used in all contexts

 * TEI documentation: Documentation of the TEI guidelines used for the
   transcriptions

 * rfc5013.txt: Dublin Core metadata elements

 * DCMI_Metadata_Terms: Dublin Core metadata term specification

 * ArchimedesPalimpsestXML.xml: Documentation of Archimedes Palimpsest
   custom metadata schemas for metadata and content management

5.2 Computer Access Tools
-------------------------

For machine access to the files in this data set the following files
can be used.

 * ArchimedesPalimpsestXML.txt: Documentation of Archimedes Palimpsest
   custom metadata schemas for metadata and content management
   [forthcoming]

 * Content.xml: a machine readable table of contents for the data set,
   connecting content files to their unique identifiers, metadata
   records, and folios [forthcoming]

 * FolioIndex.xml: a machine readable list of the Archimedes
   Palimpsest folios, by work, prayer book folio, and undertext folio
   [forthcoming]

 * XML schemas and DTDs for working with content XML files, including
   TEI, DublinCore, and custom schemas created for the data set

 * TEI documentation: Documentation of the TEI guidelines used for the
   transcriptions


5.3 Scientific Information
--------------------------

The included scientific texts provide descriptions of image capture
and processing techniques used to create the data set.

 * ImageCapture.txt: Documentation of techniques used to capture
   spectral images used in the data set [TBD]

 * ImageProcessing.txt: Documentation of techniques and algorithms
   used createthe processed images used in the data set [TBD]

 * XRFCaputre.txt: Documentation of XRF imaging used to capture XRF
   images used in the data set [TBD]

 * Archie_1.0.pdf: Documentation of the Archie 1.0 image manipulation
   software suite [to be update]

THE MARK OF ARCHIMEDES
