?-$	?0t?kS????X5x???~j?t?x?!'1?Z@	!       "\
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails'1?Z??+??????A#??~j???"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails{?G?z??9??v????Ay?&1?|?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsˡE?????;?O??n??A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails/?$???y?&1???Ay?&1?|?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsX9??v???v??/??A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails'1?Z@?n???@Am???????"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails/?$????I+???A{?G?z??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9??v????{?G?z??A?~j?t?x?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9??v????{?G?z??A?~j?t?x?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails	?? ?rh???l??????AX9??v???"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails
?z?G???T㥛? ??A/?$???"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?S㥛????&1???A??C?l??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails???S㥛?;?O??n??A;?O??n??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails??~j?t??9??v????A?~j?t?x?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsZd;?O???????Mb??Ay?&1?|?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsm???????333333??A?/?$??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?? ?rh??{?G?z??Ay?&1?|?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?I+???{?G?zt?A?~j?t?x?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsy?&1?|?????Mbp?A?~j?t?h?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?~j?t?x?????Mbp?A????Mb`?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsJ+????E??????A????Mbp?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails{?G?z???I+???A;?O??n??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9??v????Zd;?O???A?~j?t?x?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?? ?rh??;?O??n??A????Mb??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?? ?rh??;?O??n??A????Mb??"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails???????????Q???A??Q????"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails#??~j???7?A`????A???Q???"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?Q?????y?&1???Ay?&1?|?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails???Q???????????A{?G?zt?"^
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails?~j?t???/?$???A?~j?t?h?*	     ?k@2F
Iterator::Model???Mb??!?2???+E@)y?&1???1??@\?99@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???Q???!o0E>?;@)????????1\?9	ą6@:Preprocessing2U
Iterator::Model::ParallelMapV2??~j?t??!??+c?1@)??~j?t??1??+c?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate{?G?z??!J .Ԝ2@)???S㥛?11E>?S(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????Mb??!C?I .?L@)/?$???1?n0E>?"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice9??v????!??;zel@)9??v????1??;zel@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor{?G?z??!J .Ԝ@){?G?z??1J .Ԝ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???Mb??!?2???+5@)y?&1?|?1??@\?9	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 53.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
$	?q?????<?????????Mbp?!?n???@	!       "	!       *	!       2$	?G??????@?dS??????Mb`?!m???????:	!       B	!       J	!       R	!       Z	!       JCPU_ONLYb Y      Y@q???z?8@"?
both?Your program is POTENTIALLY input-bound because 53.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2I
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono:
Refer to the TF2 Profiler FAQb?24.9706% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"CPU: B 