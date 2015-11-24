.class Lcom/android/settings_ext/cx;
.super Ljava/lang/Object;
.source "FrequentlyFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic lz:Lcom/android/settings_ext/FrequentlyFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/FrequentlyFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings_ext/cx;->lz:Lcom/android/settings_ext/FrequentlyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9

    .prologue
    const v8, 0x7f090b97

    const/4 v7, 0x1

    .line 39
    iget-object v0, p0, Lcom/android/settings_ext/cx;->lz:Lcom/android/settings_ext/FrequentlyFragment;

    iget-object v0, v0, Lcom/android/settings_ext/FrequentlyFragment;->bY:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 41
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ext/cx;->lz:Lcom/android/settings_ext/FrequentlyFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/cx;->lz:Lcom/android/settings_ext/FrequentlyFragment;

    const v3, 0x7f090b95

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/FrequentlyFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ext/cx;->lz:Lcom/android/settings_ext/FrequentlyFragment;

    iget v6, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Lcom/android/settings_ext/FrequentlyFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ext/cy;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ext/cy;-><init>(Lcom/android/settings_ext/cx;Landroid/preference/PreferenceActivity$Header;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 60
    return v7
.end method
