?+$	??eҹ???Ϛ??2???y?&1?|?!????K?@	!       "\
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?&1???/?$???A??C?l??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?A`??"??J+???A????Mbp?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsy?&1???{?G?z??A????Mbp?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails??ʡE????Zd;??A????Mb??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails;?O??n??{?G?zt?A9??v????"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsV-??????S㥛?AbX9?ȶ?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsy?&1???{?G?z??A????Mbp?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails???Q???{?G?z??A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails)\???(??y?&1???A???S㥛?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails	?? ?rh??9??v????A????Mbp?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails
m???????9??v????A)\???(??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?l???????I+???A???Q???"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails{?G?z??y?&1???A?~j?t?x?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails??~j?t??y?&1???A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsZd;?O???????Mb??Ay?&1?|?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails??/?$????K7?A??A?x?&1??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails333333?????(\???A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails???Q???????????A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?I+???????Mb??A?~j?t?h?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails;?O??n???~j?t???A?~j?t?x?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails??~j?t???E???Ը?Ash??|???"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsy?&1?|?????Mbp?A?~j?t?h?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsy?&1???????Mb??A?~j?t?x?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?rh??|????ʡE??A;?O??n??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails????Mb???I+???A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?Zd;???Q?????AˡE?????"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?I+???;?O??n??A????Mb??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails??~j?t??L7?A`???A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails333333?????(\???A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails????K?@V-??@A?I+???*	     ?a@2F
Iterator::Model?Zd;??!????#TE@)ˡE?????1J9 2ܫ<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?I+???!O??N??>@);?O??n??1Ad?W?,9@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???Q???!6?n??4@)???Q???16?n??4@:Preprocessing2U
Iterator::Model::ParallelMapV2{?G?z??!H?>???+@){?G?z??1H?>???+@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????Mb??!9 2ܫ`@)????Mb??19 2ܫ`@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????Mb??!9 2ܫ`@)????Mb??19 2ܫ`@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 68.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
$	?.n?????ҿa???????Mbp?!V-??@	!       "	!       *	!       2$	?W?]p?????#I????~j?t?h?!?I+???:	!       B	!       J	!       R	!       Z	!       JCPU_ONLYb Y      Y@q?'?u???"?
both?Your program is POTENTIALLY input-bound because 68.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2I
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono:
Refer to the TF2 Profiler FAQ2"CPU: B 