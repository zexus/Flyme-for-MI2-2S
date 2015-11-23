.class Lcom/android/settings/cy;
.super Ljava/lang/Object;
.source "FrequentlyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic lA:Landroid/preference/PreferenceActivity$Header;

.field final synthetic lB:Lcom/android/settings/cx;


# direct methods
.method constructor <init>(Lcom/android/settings/cx;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/cy;->lB:Lcom/android/settings/cx;

    iput-object p2, p0, Lcom/android/settings/cy;->lA:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/cy;->lA:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/cz;->A(I)I

    move-result v0

    .line 50
    if-ltz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/settings/cy;->lB:Lcom/android/settings/cx;

    iget-object v1, v1, Lcom/android/settings/cx;->lz:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v1}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/provider/b;->l(Landroid/content/Context;I)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/cy;->lB:Lcom/android/settings/cx;

    iget-object v0, v0, Lcom/android/settings/cx;->lz:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v0}, Lcom/android/settings/FrequentlyFragment;->Z()V

    .line 54
    :cond_0
    return-void
.end method
