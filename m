Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6650EA276E0
	for <lists+tipc-discussion@lfdr.de>; Tue,  4 Feb 2025 17:14:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1tfLYw-0001PY-3S;
	Tue, 04 Feb 2025 16:14:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hhou@rbbn.com>) id 1tfLYv-0001PM-6j
 for tipc-discussion@lists.sourceforge.net;
 Tue, 04 Feb 2025 16:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+dD8WrGc/lGSRwnBhaDXiK1PpEn+ms2mbwej44GPUSc=; b=UNxmO37qkLDbAo+NoHHAZtk4jV
 G1+rlU7H4GOoHPlxSGGcsEk/1D4px+8Hnc2uv/3QUkK2ZDew5+5kzku+BAKuB+1LEGQm4Q18sa4t6
 ukStWXUK3IE1uViC3UWq+bfAXKxwH/xAeFZjmr7LtI+7pdpfAUfrr/meM4CxcrbEZmBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+dD8WrGc/lGSRwnBhaDXiK1PpEn+ms2mbwej44GPUSc=; b=O
 l4eKvIb450/1e+q9DIinzXcqvEn0rvRQeTLpfAEdcT9qdMc6zBJMRhznOGPm3ISmWm0dAbhHhIwWm
 YDBa/ulKvHRbgw+vkNj98UK78pSbBV0ymkHoJONsbglh0eg+HAK8YyaoosFbMhgxvzv0wi43EQfyO
 jQlftGN0iQBMDFqU=;
Received: from usb-smtp-delivery-110.mimecast.com ([170.10.151.110])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfLYt-0005eR-KS for tipc-discussion@lists.sourceforge.net;
 Tue, 04 Feb 2025 16:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rbbn.com;
 s=mimecast20240522; t=1738685641;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=+dD8WrGc/lGSRwnBhaDXiK1PpEn+ms2mbwej44GPUSc=;
 b=C/mS79WPkAIsPax6HQbJ8jiHWp3CbidWfD/T/WOuPupLa4qZOQUiZgnjDHNYs9jclfdf47
 DixukuMbVecc+EMoaZfEPJN7DcdXMcg6O78/6c3K7jWZr5GWxUVeRtIQgGifNQRWWfZwRi
 kUYrcbIfTpB07QSd8wbEwpGejFmQevuCFiKcRhEy8vw6GqneBIyjOmAqrCWQ0rB1ZJA+4A
 1VdTwQe7b5oejcwRc6leYAm/lOrlGJHagUa2jjDeXPuZYEsHcJP7L1tupf7AHDQp8Ye0ID
 srv4kj0vamHm42vh5o4JyE5sjWwLNBQ5/Oi5Ds8ou8w+poA6qCYlNJ4Qhk7YEQ==
Received: from CY4PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazlp17010000.outbound.protection.outlook.com
 [40.93.6.0]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 usb-mta-29-zu-cEF1jOP-iHyxDFmN3JA-2; Tue, 04 Feb 2025 07:57:51 -0800
X-MC-Unique: zu-cEF1jOP-iHyxDFmN3JA-2
X-Mimecast-MFC-AGG-ID: zu-cEF1jOP-iHyxDFmN3JA
Received: from SN6PR03MB3822.namprd03.prod.outlook.com (2603:10b6:805:68::28)
 by CH0PR03MB6132.namprd03.prod.outlook.com (2603:10b6:610:bb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Tue, 4 Feb
 2025 15:57:48 +0000
Received: from SN6PR03MB3822.namprd03.prod.outlook.com
 ([fe80::3f3e:2f55:911b:297c]) by SN6PR03MB3822.namprd03.prod.outlook.com
 ([fe80::3f3e:2f55:911b:297c%6]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 15:57:48 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Question on removing remote IP
Thread-Index: Adt3G8mYGuOOJvzJTvqTjry3DgpNAw==
Date: Tue, 4 Feb 2025 15:57:47 +0000
Message-ID: <SN6PR03MB3822A7B7D2381FCCBF251760B3F42@SN6PR03MB3822.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR03MB3822:EE_|CH0PR03MB6132:EE_
x-ms-office365-filtering-correlation-id: 70a6618a-b6ab-481c-88cd-08dd4534abe7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|8096899003
x-microsoft-antispam-message-info: =?us-ascii?Q?ap8A5p1CZ37mRHZinydrB7zbJre4Z5UySeNo0VACm3U2lhcCtELZNadm03jJ?=
 =?us-ascii?Q?f6npiUMDOZI4zFXCXBukaPCfDGR0WNlHhEufRLpY8mvm9lS2TtwrpO1Z/Dn0?=
 =?us-ascii?Q?DO7iqCfG2SWLYLz9uQluRLZP91PBjj53H8lHNuvnfkojtpVWcyPE+neD0zrc?=
 =?us-ascii?Q?88QfxpNCalns6wOfqEEqtVBBvTI/4EeQxHvgUWxHIr0OaxcJxIn8NX9KPzcB?=
 =?us-ascii?Q?Ez+F/C85I591clUGfJCkjeytwk/SmSQHFbptpFPCwlm4O2AcDqCLkKtBxZz9?=
 =?us-ascii?Q?a5JLxnF403tniL1453BCK7RwBgkOvrsRBhsLjKGgqqcl+VCLvsNh3qROvqF5?=
 =?us-ascii?Q?uqei3tmJ2WjX2dRfBhT40DIE7Awg4IPHvO8VeynzFfrqfVM43OZ9wzDA6MRa?=
 =?us-ascii?Q?4BkhI96BiIHezpbcaR+3QtyhJVyBY3l9UmWs6IG3m8OhINGZ9+zwYSYtWnH+?=
 =?us-ascii?Q?MWcVBg0sTdCHkg524HAwFlwy2WPslv5hMH8flV9LfEA6lcG6lmKW6xEuWuW2?=
 =?us-ascii?Q?28u1cm8gVliJt9T2NkmbrXXW4tuaqVkN7Kw16e7WrHskSsEi/enQvcLfKErh?=
 =?us-ascii?Q?V/fkPVCVKg88Se1rQOywhLCYztBw+rQ1OiB9JM0TVNUgMP+VqtcSKvS2gv/O?=
 =?us-ascii?Q?jtTHDgspyxsGIps/b+l7H74YF0dT0cAOIXm4lJxP1TJunXtDhL9pcnEtWwIc?=
 =?us-ascii?Q?wl7UgC538Ylpv21lx1vCQgJFIEpxLqcMesZJrPzGSd82QeZTzpsfQVRg6g7g?=
 =?us-ascii?Q?s3tIThKFAiswlKYKJtOx4njHLM87v3bU4T6AFlCGT/zgF0Yz+Kgk2ouV6TDu?=
 =?us-ascii?Q?a49xDmuH84kZFUxqW21H0wUnEM8zaX7o/hWwJEwrvAdrvUMpXuF6MXtPZrlQ?=
 =?us-ascii?Q?DEMiaTNubDqKqyePectgNbVBpE5dHuU67A4Q02AQAX79XDZvtF39YAO0DdnG?=
 =?us-ascii?Q?iVB9nZRHofG1hvzlhW9q8j0nppZsIHdSJTbC7gzxaV8IbBfWQsDxWpQ09TZw?=
 =?us-ascii?Q?JW/TpClOA6AFY9BMS1by2e3SCVOIYhUIrJDwRNNGc3cBGqNt0/b8rXhblzuO?=
 =?us-ascii?Q?wAa82KmtpTpqrWGnn2OhrZrEXEr5AjKjpxBnn7qr0GvIcjNE2jJhEvVWOE7X?=
 =?us-ascii?Q?DpZGNxE3XemotQg+ZfFeQRxrZAEcHjuAcC566cnixYaPUdFRv6kTANCbaFAj?=
 =?us-ascii?Q?TRnVR8w43b0Z0fxHm5tlSveDBOYksCcWOQpqGflQoExdYHLF3UXQghk7nD4i?=
 =?us-ascii?Q?HcZvm7mAJUSX5l/fYE9zN2JjqcmUqqvVuEqVRv+UyoG3KPHcZwCD5W39PZIr?=
 =?us-ascii?Q?THhUYmMKWKpIwKxEX7li8qCxOKlDpjvV3X3ncz469qmL0nKb1x8UnD8MGn0o?=
 =?us-ascii?Q?0bCqo6mOex52EwPxuTotIEKPZL75KdF1Bh4sWQ3RMYBy2IIJ/gQFayrUTP5N?=
 =?us-ascii?Q?MvDLpzeDf+mz0fvE782CmaOCYWWHOWxS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR03MB3822.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(8096899003); DIR:OUT;
 SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9bE8ODJoig13IyGQxqAuKo9G8vWFnaYuaXJ35hM4SffuMeP/WDlWE7Af1+lr?=
 =?us-ascii?Q?LKXY5tsKeYuzrnLLnAlnRxnGtvtS3EhQ1tYoTyx+KuGRcIO+d/fdICRM9Omj?=
 =?us-ascii?Q?AgpBSVd1p0WaryEArtaIpg6JaJX7vKa+AAtLIOVI5rU85nqNbq063I81OMEn?=
 =?us-ascii?Q?1/D05C1dYXwTCIjBrZ3Ibw50oGIkjmIcCCoUalnyE5oOqbaYwNVMMXP6+1Fg?=
 =?us-ascii?Q?3CyUU8IZEodbg41+gRcps/Je4rLeGSVBnxxZlAKRSPps2kzBT6Py5T5nWfUR?=
 =?us-ascii?Q?qvfpZ3jiamGT0HARxLZkGgvs25pVavkZGfj/OKfShcgNBgA6WGzXa5svLhw/?=
 =?us-ascii?Q?FDRbImqQ6C35Zq1gwmXTSSD3zYjJTl5VZwvtftyFHvJpZs3vaqvTJK995vjg?=
 =?us-ascii?Q?WFYlGDoR96xLGLhdKsNRs++Cd2R4zhehamucxB5ezTFj7BpeFpvRFPDfS9i9?=
 =?us-ascii?Q?ZX7i4TLYLsCJZGW//Xmm9Q4ueI+0WWcJ2WrA9EKxAn4o745t5YQqJB8TqgIP?=
 =?us-ascii?Q?ZWVpDVo7oWN9YHHyeVAE5JZ2np2TOJg3CMm0twuXG5awoo/k47k1e2rZQDzY?=
 =?us-ascii?Q?LsLPJ0NwGGtILx4o/isJfAn6CT0snEbsR0fA/XWhy1wwx6NehaJ6BFlbL9lU?=
 =?us-ascii?Q?b7417eYPPH9wzpClM7plC4AYAHQz25cfGykHqFZqEC0zKqM8lJ7p6W5kVd81?=
 =?us-ascii?Q?2gLo/L+AiIgQPfylQ+iEMG5Cy0Q2DfHxeOmx8HHGssL/9UYXogTBU114dL4s?=
 =?us-ascii?Q?MB7igCMoWQHjOLued6azrWck0PFnqmPmE1KMYZqTYbFIMW0UCD0FxvZb04yV?=
 =?us-ascii?Q?l6L1HmRgVDz5zBO+N0/DG5XVWXmQ7C3cHOYUHS4TeBaFXCdIKz/WluHM7VF/?=
 =?us-ascii?Q?B69H9NwffQ9AUddWpVlUyK0iqzLCusWQ06XVCZLTSXSTJXpDcsYNR8+gppNN?=
 =?us-ascii?Q?4dplPHZIdZuiYItXOXMjWJI9RyBFIQ8oPL7P/vrYQH4U404oqfMEUX6tPzsJ?=
 =?us-ascii?Q?X3RXzYo+S0AekS5umjxt1psOiPdfKPMdk9Xz9m+tDoLaYrBxSjhM78dC891f?=
 =?us-ascii?Q?gmrv9cuS/17SSVtkB//BkBLvAxt3/JYguvKR+RmbGE23kHLBST0H6nJ/xhjn?=
 =?us-ascii?Q?THNXJ28ZXWNUJuVjh4T5taNhRuT0UDk3dNhBnC0xTyjFLs+6NqlncgTeNsLf?=
 =?us-ascii?Q?7TrWW927oGDeswli2S+xXdr+pXYjErcJe3m3fcD2GxrF6t73lvdeMPEEml4f?=
 =?us-ascii?Q?55E8jPPYh++iQF9osVWwZQXsOQLExFmg+M/bIKmxJWi/1bAnOJ5oWeq8SCa+?=
 =?us-ascii?Q?U9U8/4ivdkQvvz25avVbenpTKf229hF4neJFFFz1D58kndqyIqc3P4i7f3b8?=
 =?us-ascii?Q?39XSlrc0H8eLjG2vukT51ZuQhg2iP1kNSfGYUOumPTT6K+uQmjTnSzue1TMe?=
 =?us-ascii?Q?ctugnU49PBZ72lfdziyEYC6Te5LlnT76TSTVlHRYXPm933USczlVkyiuToTi?=
 =?us-ascii?Q?tr1k8nLeM12yIIXloX1isr6Ys4FFzc355gl8YTB0gYUZ+DdlmPNpoX4G6TBU?=
 =?us-ascii?Q?LYM3pbdRha4UW48a1Yw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: rbbn.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB3822.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70a6618a-b6ab-481c-88cd-08dd4534abe7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2025 15:57:48.0590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 29a671dc-ed7e-4a54-b1e5-8da1eb495dc3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1wJHjyIgBwlvZW25JVIR/cC0FKm5G5HtKocY4ksGj38Nl6bGqroauku1pjiiVFN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR03MB6132
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: UZV4nhlodBHlQE1Ixs6M-_w_pivTZ4XmiJ7ve3nBJlE_1738684671
X-Mimecast-Originator: rbbn.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greetings TIPC team, TIPC supports adding multiple remote
 IP addresses to a UDP bearer with "tipc bearer add" command. How do we remove
 a previously added remote IP address from a UDP bearer without impacting
 the TIPC com [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.151.110 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.151.110 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.151.110 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.151.110 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tfLYt-0005eR-KS
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Question on removing remote IP
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
From: "Hou, Hao via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Hou, Hao" <HHou@rbbn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Greetings TIPC team,

TIPC supports adding multiple remote IP addresses to a UDP bearer with "tipc bearer add" command.
How do we remove a previously added remote IP address from a UDP bearer without impacting the TIPC communications with other existing remote IP addresses in the same UDP bearer? The "tipc bearer --help" doesn't show such option.

Thanks,
Hao

Disclaimer

This e-mail together with any attachments may contain information of Ribbon Communications Inc. and its Affiliates that is confidential and/or proprietary for the sole use of the intended recipient. Any review, disclosure, reliance or distribution by others or forwarding without express permission is strictly prohibited. If you are not the intended recipient, please notify the sender immediately and then delete all copies, including any attachments.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
