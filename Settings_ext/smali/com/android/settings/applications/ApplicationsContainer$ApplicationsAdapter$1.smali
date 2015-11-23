.class Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ApplicationsContainer.java"


# instance fields
.field final synthetic Ee:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->Ee:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->Ee:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->Ee:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 550
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 551
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 552
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 553
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->Ee:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ec:Ljava/lang/CharSequence;

    .line 561
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->Ee:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 562
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->Ee:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 563
    return-void
.end method
