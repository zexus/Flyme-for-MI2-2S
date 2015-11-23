.class Lcom/android/settings/X;
.super Ljava/lang/Object;
.source "BasePreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic bZ:Lcom/android/settings/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BasePreferenceFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/X;->bZ:Lcom/android/settings/BasePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 105
    sget-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/X;->bZ:Lcom/android/settings/BasePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/X;->bZ:Lcom/android/settings/BasePreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/BasePreferenceFragment;->bY:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 109
    iget-object v1, p0, Lcom/android/settings/X;->bZ:Lcom/android/settings/BasePreferenceFragment;

    invoke-static {v1, v0, p3}, Lcom/android/settings/BasePreferenceFragment;->a(Lcom/android/settings/BasePreferenceFragment;Landroid/preference/PreferenceActivity$Header;I)V

    .line 110
    return-void
.end method
