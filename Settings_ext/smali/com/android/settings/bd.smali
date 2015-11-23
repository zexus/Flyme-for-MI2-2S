.class Lcom/android/settings_ext/bd;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic gH:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/settings_ext/bd;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/settings_ext/bd;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->b(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 734
    return-void
.end method
