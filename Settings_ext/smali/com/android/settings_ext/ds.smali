.class Lcom/android/settings_ext/ds;
.super Ljava/lang/Object;
.source "MiuiBackgroundDataEnable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ow:Lcom/android/settings_ext/dq;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dq;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ext/ds;->ow:Lcom/android/settings_ext/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ext/ds;->ow:Lcom/android/settings_ext/dq;

    iget-object v0, v0, Lcom/android/settings_ext/dq;->bU:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 86
    return-void
.end method
