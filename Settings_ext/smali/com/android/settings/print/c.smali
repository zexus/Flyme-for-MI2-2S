.class Lcom/android/settings/print/c;
.super Landroid/database/DataSetObserver;
.source "PrintServiceSettingsFragment.java"


# instance fields
.field final synthetic ahg:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/print/c;->ahg:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private re()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/print/c;->ahg:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->c(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/print/g;->rf()I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/android/settings/print/c;->ahg:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->d(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/c;->ahg:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->d(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_2

    if-gtz v0, :cond_2

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/settings/print/c;->ahg:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/settings/print/c;->ahg:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I

    .line 111
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/print/c;->re()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/print/c;->ahg:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    .line 97
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/print/c;->re()V

    .line 102
    return-void
.end method
