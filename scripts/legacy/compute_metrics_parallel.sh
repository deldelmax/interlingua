# TODO: make it python script to compute CKA matrix for all xnli_ext. languages

# exp_name=xnli_15way
# data_name=onlyhypo_xnli_extension
exp_name=xnli_extension
src_lang=en
# model_name=xlm-roberta-base
# model_name=bert-base-multilingual-cased
#model_name=bert-base-multilingual-uncased
#sim_names = ["anatome_svcca_0.99", "anatome_cka", "anatome_pwcca", "google_pwcca"]
sent_rep="mean"

for model_name in "bert-base-multilingual-uncased"
  do
    for metric in "google_cka"
      do
      for tgt_lang in "en_shuf" "ar" "az" "bg" "cs" "da"
        do
          python scripts/compute_metric.py $exp_name $model_name $metric $sent_rep $src_lang-$tgt_lang
        done
      done
done

