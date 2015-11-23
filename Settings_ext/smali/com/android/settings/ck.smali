.class Lcom/android/settings_ext/ck;
.super Ljava/lang/Object;
.source "EdgeModeGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic kD:Lcom/android/settings_ext/EdgeModeGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/EdgeModeGuideActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ext/ck;->kD:Lcom/android/settings_ext/EdgeModeGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/ck;->kD:Lcom/android/settings_ext/EdgeModeGuideActivity;

    invoke-virtual {v0}, Lcom/android/settings_ext/EdgeModeGuideActivity;->finish()V

    .line 76
    return-void
.end method
