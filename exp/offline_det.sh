# For documentation, please refer to "doc/tasks.md"

dataDir="/data2/mengtial"

methodName=mrcnn50_nm
scale=0.5
# "nm" is short for "no mask"

python det/offline_det.py \
	--data-root "$dataDir/Argoverse-1.1/tracking" \
	--annot-path "$dataDir/Argoverse-HD/annotations/val.json" \
	--config "$HOME/repo/mmdetection/configs/mask_rcnn_r50_fpn_1x.py" \
	--weights "$dataDir/ModelZoo/mmdet/mask_rcnn_r50_fpn_2x_20181010-41d35c05.pth" \
	--in-scale $scale \
	--no-mask \
	--out-dir "$dataDir/Exp/Argoverse-HD/output/${methodName}_s${scale}/val" \
	--overwrite \
	--vis-dir "$dataDir/Exp/Argoverse-HD/vis/${methodName}_s${scale}/val" \
	--vis-scale 0.5 \
