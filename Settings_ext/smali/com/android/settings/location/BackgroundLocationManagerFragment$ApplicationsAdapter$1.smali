.class Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "BackgroundLocationManagerFragment.java"


# instance fields
.field final synthetic acs:Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;->acs:Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;->acs:Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;->acs:Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    iget-object v1, v1, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings/location/BackgroundLocationManagerFragment;

    invoke-static {v1}, Lcom/android/settings/location/BackgroundLocationManagerFragment;->c(Lcom/android/settings/location/BackgroundLocationManagerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;->acs:Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    invoke-static {v2}, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->a(Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 246
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 248
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;->acs:Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Ec:Ljava/lang/CharSequence;

    .line 256
    iget-object v1, p0, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;->acs:Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->a(Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 257
    iget-object v0, p0, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;->acs:Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 258
    return-void
.end method
