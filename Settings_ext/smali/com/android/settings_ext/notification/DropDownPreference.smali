.class public Lcom/android/settings_ext/notification/DropDownPreference;
.super Lcom/android/settings_ext/dndmode/LabelPreference;
.source "DropDownPreference.java"


# instance fields
.field private final adV:Landroid/widget/Spinner;

.field private final adW:Ljava/util/ArrayList;

.field private adX:Lcom/android/settings_ext/notification/DropDownPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private final qd:Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/notification/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/dndmode/LabelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adW:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/android/settings_ext/notification/DropDownPreference;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/notification/DropDownPreference;->mContext:Landroid/content/Context;

    sget v2, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->qd:Landroid/widget/ArrayAdapter;

    .line 51
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/notification/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    .line 53
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/notification/DropDownPreference;->qd:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/settings_ext/notification/DropDownPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/notification/DropDownPreference$1;-><init>(Lcom/android/settings_ext/notification/DropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/DropDownPreference;->setPersistent(Z)V

    .line 67
    new-instance v0, Lcom/android/settings_ext/notification/DropDownPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/DropDownPreference$2;-><init>(Lcom/android/settings_ext/notification/DropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/DropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/DropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/settings_ext/notification/DropDownPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public a(Lcom/android/settings_ext/notification/DropDownPreference$Callback;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adX:Lcom/android/settings_ext/notification/DropDownPreference$Callback;

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->qd:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adW:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public h(IZ)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 90
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adX:Lcom/android/settings_ext/notification/DropDownPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adX:Lcom/android/settings_ext/notification/DropDownPreference$Callback;

    invoke-interface {v0, p1, v1}, Lcom/android/settings_ext/notification/DropDownPreference$Callback;->b(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->qd:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/DropDownPreference;->setLabel(Ljava/lang/String;)V

    .line 95
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 96
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/DropDownPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public n(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 109
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/DropDownPreference;->setSelectedItem(I)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings_ext/dndmode/LabelPreference;->onBindView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 138
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    iget-object v1, p0, Lcom/android/settings_ext/notification/DropDownPreference;->adV:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSelectedItem(I)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ext/notification/DropDownPreference;->h(IZ)V

    .line 86
    return-void
.end method
