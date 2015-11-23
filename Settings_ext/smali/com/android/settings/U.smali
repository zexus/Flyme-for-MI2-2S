.class Lcom/android/settings_ext/U;
.super Ljava/lang/Object;
.source "BaseEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bT:Lcom/android/settings_ext/BaseEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/BaseEditFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ext/U;->bT:Lcom/android/settings_ext/BaseEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/U;->bT:Lcom/android/settings_ext/BaseEditFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/BaseEditFragment;->onCancel()V

    .line 120
    return-void
.end method
