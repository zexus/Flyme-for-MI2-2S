.class Lcom/android/settings_ext/fQ;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vV:Lcom/android/settings_ext/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/settings_ext/fQ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/settings_ext/fQ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->s(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fQ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ext/RadioInfo;->r(Lcom/android/settings_ext/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v0, p0, Lcom/android/settings_ext/fQ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->u(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fQ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ext/RadioInfo;->t(Lcom/android/settings_ext/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v0, p0, Lcom/android/settings_ext/fQ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->w(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fQ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ext/RadioInfo;->v(Lcom/android/settings_ext/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    return-void
.end method