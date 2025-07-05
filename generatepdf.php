<?php
require 'dompdf/autoload.inc.php';
use Dompdf\Dompdf;

ob_start();
include 'viewresume.php'; // This should output the resume HTML
$html = ob_get_clean();

$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();

// Optional: save file on server
file_put_contents("resumes/$name.pdf", $dompdf->output());

$dompdf->stream("resume_$name.pdf", array("Attachment" => true));
?>