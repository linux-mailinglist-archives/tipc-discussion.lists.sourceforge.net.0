Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D54731A06D7
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Apr 2020 07:57:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLhFC-0002lO-61; Tue, 07 Apr 2020 05:57:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jLhFB-0002lD-Bz
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Apr 2020 05:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+F5ivIQCsdEwJ74yrU68jKpXRY0ftJqZOQmQrNAty3s=; b=J4Bruixm6yesz9voDY9jd5TTUh
 TioQFcusF5FegjHeI3I/jXrLtG/L08yaL3wxkDd7lgUcX8oRLqFE72OR2MDyJJiu2mrEUTjwElSvx
 kUHfRZ12oc+kayGI2/M2l7L2wHaVhIRBb7+PQc5KG6QF+/Kl4dJoi9fqc3kTqUrpJjWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+F5ivIQCsdEwJ74yrU68jKpXRY0ftJqZOQmQrNAty3s=; b=R9uFhx134X6kRhPHPkqmNrTLCm
 qNv0JZb1bmvFEWoTvzq0k7rpO5CjdJHoAbyohJl8Dos4PhPitCQZPkXKj6544LO1GYOCBgKNwfYx5
 MhrS/W5rH7oneZibehV3oQXChQ9yGvtP8cfa3HlWrnfLPhYhSQxYgveFdUxjGZkTmicY=;
Received: from mail-mw2nam12on2081.outbound.protection.outlook.com
 ([40.107.244.81] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLhF1-009q5n-E0
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Apr 2020 05:57:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m6X7OYYBJIPx1aI0JYInp9oedHCjEJe8zT4DIihixFWquocV7YVIAqcBsDMysHzanWRqs/erHFw/V3hgo/xjHzII/Pb8IPU4dWkgdaSLUVOvXqAGq9XZTWkOGoGFL1oSTgzftYyuqlzNz0kKJcicXh2lP+yuFoGty43D8q9tJnEx5KcuLkLx8QCbT0qbVw7G/nPEaDoaTjkE2UPFD5HZy3abwc99KJBgzWMv6txc5QTeWojqppngLGowLbkHL3kV5KzIz701lIxbrRxPo5yvHDUZlTu+QHrYOqIIlij9bvwH+erfvzPydOouharJhAn9Nf65uOmZDUKz9OX/2wCrYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+F5ivIQCsdEwJ74yrU68jKpXRY0ftJqZOQmQrNAty3s=;
 b=cJu/trBNBqmjmys9y2rYkuDF3+8Gyt0gOCUmtBGhfw3HvQra/ZfuQSo5giJAD8oxpPOps14c4Uxd4xnsjih1djuIYrVR9m6RHCCcjyFTsdiEPb5udpGO8/ujCc578M/7Rfhox2i0XCjJVL5n3X+RN4X3sgHNINvQcNm6wVbRADCDWMwQ30O7+h4caHAou2CnoY07JZ0WzeOjtVYhTZV3Ob2okWDj2WfoevZYf42+c8whacU+blm+ex3tvLTshTLRUQOzkUzBKafgJKFtq7XkbkPEZMB2SYhuByZThDLOguWm/1Zq3kprdkh6iD/0KbozHbpWLnsNE7WhiaC7s96YrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+F5ivIQCsdEwJ74yrU68jKpXRY0ftJqZOQmQrNAty3s=;
 b=davS8OgOOhRxiXZpCNH0hzxHAyOTH/snrnqno04uvgWziXar9LmTMs0sTQ4932jTjT1aQGoTLwCEShvVc/SkjWxPR8hR8t6dL4skwqAIwZ5gFNscld1SximK02YU431bn4omfLNTXwanb3HGTGxuoAAL5NkynfB2JbuS3IebogY=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4119.namprd11.prod.outlook.com (2603:10b6:a03:190::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Tue, 7 Apr
 2020 05:57:36 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289%6]) with mapi id 15.20.2878.017; Tue, 7 Apr 2020
 05:57:36 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC 3/4] tipc: enable broadcast retrans via unicast
Thread-Index: AQHWBLXvEtrijErf8E+WiB8QsdjYEKhrjK7AgABLrgCAAVcxcA==
Date: Tue, 7 Apr 2020 05:57:35 +0000
Message-ID: <BY5PR11MB3894DEC5A7DF726E0BDDB8C984C30@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
 <20200328040309.4656-4-tuong.t.lien@dektech.com.au>
 <BY5PR11MB3894FE632A7F59E6AC8F679D84C20@BY5PR11MB3894.namprd11.prod.outlook.com>
 <AM6PR0502MB392589BE264C3F003700137EE2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
In-Reply-To: <AM6PR0502MB392589BE264C3F003700137EE2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ying.Xue@windriver.com; 
x-originating-ip: [114.240.85.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 932b2433-5310-4342-75e9-08d7dab8927a
x-ms-traffictypediagnostic: BY5PR11MB4119:
x-microsoft-antispam-prvs: <BY5PR11MB4119A704DF6F03C7EB8CC66784C30@BY5PR11MB4119.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(376002)(39840400004)(366004)(396003)(346002)(76116006)(45080400002)(2906002)(5660300002)(316002)(33656002)(71200400001)(4326008)(186003)(26005)(52536014)(478600001)(66556008)(110136005)(8936002)(7696005)(66446008)(64756008)(53546011)(86362001)(9686003)(81166006)(55016002)(6506007)(81156014)(66476007)(66946007)(8676002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RpFNL8Knz5c55f2pa2CuG+VOy089y2tAMlG8v2QnZEVuHIkfG4SvjQg/3KD0OAwKRrBPR9yvDTDI9+j8v4VKFsCQHmhaj59pHpzQy4CU4XI54/fjSd5Ud06RCTEXPfoHA9IlHvjWEiDs7AmNF/5PNwbQz3BG8VkHYtBfmUf4UQtp3k9dzJny3hGrSQm1fNkXEPYtqoSB5Bw6fP3dfxbEIIQ1yS2/JKm0RlZnnR5ooUOdMN6c46YRrbPFQx1DkcVsiSynmF1wHESxQvVOQdnKs/Ee8a3xCLsb96yuJd/2KGTA1YAT4YFNibtnAoLyI5xnGfIvnmdPuYF1kjOStaFd8yxgA8rwd8hj0w+QssRIURL9Rzd+92/sNFQmROzzgPLRKbbiVaj9iV+ldQqWbPSjHarSuBqwwUTgr75aE7xEj8wrfqNeHULS58AnLXLublLO
x-ms-exchange-antispam-messagedata: kjz811ciOYv2AMf5gMsdhHlVH56aUOrua5cdzQM2+QUCIPACO2MqtU5FReIRfQ3mN/9WttgIMv1mH5CD3Jq5m5ocuqEHHwtg6lfdTrYLdG/TarzH9u7peC0LfmvgTaasGEq2jIQsLrXv7JXUsdkoAA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 932b2433-5310-4342-75e9-08d7dab8927a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 05:57:36.0792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0dOY9LkHQ8e80MpUBS7AeOkKkDxCB1rsD2UD+716qybu74lnRP6L0pVuTIdlM+9L+m1foGqinlbFaMjY7Dzk7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4119
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.244.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.81 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLhF1-009q5n-E0
Subject: Re: [tipc-discussion] [PATCH RFC 3/4] tipc: enable broadcast
 retrans via unicast
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgVHVvbmcsDQoNClRoYW5rIHlvdSBmb3IgeW91ciBmb2xsb3dpbmcgY2xlYXIgZXhwbGFuYXRp
b25zLiANCg0KVGhlIHJlYXNvbiB3aHkgSSBhc2tlZCB5b3VyIHRlc3QgZW52aXJvbm1lbnQgaXMg
dGhhdCB0aGUgbW9yZSBjb3JlcyBDUFUgaGFzLCB0aGUgbW9yZSBxdWV1ZXMgTklDIGhhcyBhbmQg
dGhlIG1vcmUgVElQQyBub2RlcyB0aGVyZSBhcmUgaW4gb25lIFRJUEMgY2x1c3RlciwgdGhlIG1v
cmUgcGFja2V0cyB3aWxsIGJlIGRpc29yZGVyZWQgYW5kIHRoZSBtb3JlIHJldHJhbnNtaXNzaW9u
IHJlcXVlc3RzIHdpbGwgaGFwcGVuLiBJZiB3ZSBoYXZlIHN1Y2ggdGVzdCBlbnZpcm9ubWVudCB0
byB2YWxpZGF0ZSBicm9hZGNhc3QgdGhyb3VnaHB1dCBwZXJmb3JtYW5jZSwgaXQgY2FuIGhlbHAg
dXMgY2xlYXJseSBpZGVudGlmeSB3aGV0aGVyIG91ciBjdXJyZW50IHByb3Bvc2FsIGlzIGdvb2Qg
b3IgYmFkLiBJZiBnb29kLCBpdCBhbHNvIGNhbiBoZWxwIHRvIHRlbGwgaG93IG1hbnkgcGVyY2Vu
dCBicm9hZGNhc3QgdGhyb3VnaHB1dCB3aWxsICBiZSBpbXByb3ZlZC4gSW4gYWRkaXRpb24sIHVu
ZGVyIFJUX1BSRUVNUFQga2VybmVsLCBwYWNrZXRzIHdpbGwgYmUgbW9yZSBlYXNpbHkgZGlzb3Jk
ZXJlZCBhcyBoYXJkLUlSUSBhbmQgc29mdC1JUlEgaGF2ZSBiZWVuIHRocmVhZGVkLiBBcyBhIGNv
bnNlcXVlbmNlLCBpc3N1aW5nIHJldHJhbnNtaXNzaW9uIHJlcXVlc3RzIGJlY29tZSBub3JtYWwu
IE9uIHRoZSBjb250cmFyeSwgaWYgd2Ugb25seSB2YWxpZGF0ZSB3aXRoIHR3byBub2RlcyBhbmQg
dW5kZXIgdmlydHVhbCBlbnZpcm9ubWVudCwgaXQncyBhIGJpdCBoYXJkIHRvIG1lYXN1cmUgd2hl
dGhlciBiY2wgZmxvdyBjb250cm9sIGFsZ29yaXRobXMgYXJlIGdvb2Qgb3IgYmFkLg0KDQpBbnl3
YXksIEkgYW0gc3RpbGwgaGFwcHkgdG8gc2VlIHRoaXMgcGF0Y2ggYmVpbmcgbWVyZ2VkIGludG8g
dXBzdHJlYW0uIEJ1dCB0aGF0IHdpbGwgYmUgd29uZGVyZnVsIGlmIHRoZSBzd2l0Y2ggb3B0aW9u
IGNhbiBiZSBlbGltaW5hdGVkIG9uZSBkYXkuDQoNClRoYW5rcywNCllpbmcNCg0KLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFR1b25nIFRvbmcgTGllbiBbbWFpbHRvOnR1b25nLnQu
bGllbkBkZWt0ZWNoLmNvbS5hdV0gDQpTZW50OiBNb25kYXksIEFwcmlsIDYsIDIwMjAgNDo1NCBQ
TQ0KVG86IFh1ZSwgWWluZzsgam1hbG95QHJlZGhhdC5jb207IG1hbG95QGRvbmpvbm4uY29tOyB0
aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0DQpDYzogdGlwYy1kZWsNClN1Ympl
Y3Q6IFJFOiBbUEFUQ0ggUkZDIDMvNF0gdGlwYzogZW5hYmxlIGJyb2FkY2FzdCByZXRyYW5zIHZp
YSB1bmljYXN0DQoNCkhpIFlpbmcsDQoNCk5vIHByb2JsZW0sIEknbSB1c2luZyBvdXRsb29rIHRv
by4uLg0KUGxlYXNlIHNlZSBteSBhbnN3ZXJzIGNvcnJlc3BvbmRpbmdseToNCjEuIFdoZW4geW91
IG1lbnRpb24gInRoaXMgcHJvcG9zYWwiLCBkbyB5b3UgbWVhbiB0aGUgc2luZ2xlIHBhdGNoIG9y
IHRoZSB3aG9sZSBzZXJpZXMgc2luY2UgdGhlc2UgZmVhdHVyZXMgYXJlIGFjdHVhbGx5IHNlcGFy
YXRlZCBhbmQgbm90IGRlcGVuZGVudCB0b2dldGhlci4uLj8NCkFueXdheSwgdGhlcmUgaGF2ZSBi
ZWVuIHNvbWUgaXNzdWVzIHdpdGggdGhlIGxhYiBoZXJlLCBzbyBJIGp1c3QgdGVzdGVkIHRoaXMg
bmV3IGZlYXR1cmUgb24gS1ZNL1FFTVUgbm9kZXMgdXNpbmcgdGhlIHZpcnRpb19uZXQgZHJpdmVy
LCB3aXRoIDQgdkNQVXMgYW5kIG9ubHkgb25lIFRYL1JYIHF1ZXVlIGVuYWJsZWQuIEFsc28sIHRo
ZSByZWFsLXRpbWUga2VybmVsIGlzIG5vdCBwYXRjaGVkIHlldC4uLg0KSWYgeW91IGhhdmUgYSBi
ZXR0ZXIgZW52aXJvbm1lbnQsIG1heSBJIGFzayB5b3UgdG8gaGVscCB2ZXJpZnkgdGhpcz8NCg0K
QW55aG93LCBpZiBJIGNvdWxkIGNhdGNoIHVwIHlvdXIgY29uY2VybnMgaW4gdGhlIGxhc3QgbWVl
dGluZywgaXQgd2FzIG1haW5seSByZWxhdGVkIHRvIHRoZSBhbW91bnQgb2YgcGFja2V0IHJldHJh
bnNtaXNzaW9ucyB0aGF0IGNvdWxkIHBhbmljIHRoZSBOSUMgb3Iga2VybmVsLCBzbyBub3QgcmVh
bGx5IHNjYWxhYmxlPyBJZiBzbywgaW4gdGhlb3JldGljYWxseSwgaXQgc2hvdWxkIG5vdCBiZSBh
IHByb2JsZW0gc2luY2Ugd2UgaGF2ZSBhbHJlYWR5IGhhZCB0aGUgZm9sbG93aW5nIG1lY2hhbmlz
bXMgdG8gY29udHJvbCBpdDoNCi0gTGluayB3aW5kb3cgKGUuZy4gbWF4IDUwIG91dHN0YW5kaW5n
L3JldHJhbnNtaXR0ZWQgcGFja2V0cyk7DQotIFJldHJhbnNtaXNzaW9uIHJlc3RyaWN0aW5nIHRp
bWVyIG9uIGluZGl2aWR1YWwgcGFja2V0cyAoZS5nLiB3aXRoaW4gMTBtcywgaWYgYSBuZXcgcmV0
cmFuc21pc3Npb24gcmVxdWVzdCBjb21lcyBpdCB3aWxsIGJlIGlnbm9yZWQuLi4pOw0KLSBUaGUg
cHJpb3JpdHkgcXVldWUgZm9yIHBhY2tldCByZXRyYW5zbWlzc2lvbnMgKHRoYXQgaXMgdW5saWtl
bHkgY29uZ2VzdGVkKTsNCk9yIGRvIHlvdSBoYXZlIGFueSBvdGhlciBjb25jZXJucywgc28gcGxl
YXNlIGNsYXJpZnk/DQoNCjIuIFllcywgaW4gdGhlIGNvbW1pdCBpdCBoYXMgbWVudGlvbmVkIGFi
b3V0IHRoZSAiYmFuZHdpZHRoIGxpbWl0IG9uIGJyb2FkY2FzdCIgYnV0IGl0IGNhbiBiZSBpbnZp
c2libGUgdG8gdXNlci4gT25lIG9idmlvdXMgdGhpbmcgaXMgcHJvYmFibHkgdGhyb3VnaCBicm9h
ZGNhc3Qgc3RhdGlzdGljcyAoc28gdGhlcmUgaXMgYSBuZWVkIGZvciB0aGUgb3RoZXIgcGF0Y2gg
Zm9yIHRoZSBicm9hZGNhc3QgcmN2IGxpbmsgc3RhdHMpIHRoYXQgdXNlcnMgY2FuIHNlZSB0aGUg
c2VuZGVyIHRyeWluZyB0byBtYWtlIGEgbG90IG9mIChyZS0pdHJhbnNtaXNzaW9ucywgYnV0IGl0
IGRvZXNuJ3QgcmVhbGx5IHdvcmssIHRoZSByZWNlaXZlciBnZXRzIG9ubHkgYSBmZXcuLi4NCk9r
LCBJIHdpbGwgbWFrZSB0aGlzIGNsZWFyIGJ5IHJlcGVhdGluZyBzb21lIHBlcmZvcm1hbmNlIHRl
c3RzLg0KDQozLiBIbW0sIHRoaXMgdG90YWxseSB3YXMgbXkgbWlzdGFrZS4uLiBJIHJlbW92ZWQg
aXQgd2hlbiBtZXJnaW5nL3NlcGFyYXRpbmcgdGhlIHBhdGNoZXMgZm9yIHRoaXMgc2VyaWVzIOKY
uS4gSW4gYSBwcmVtYXR1cmUgcGF0Y2gsIGl0IHdhczoNCg0KQEAgLTI0MjUsNyArMjQyNiw3IEBA
IGludCB0aXBjX2xpbmtfYmNfYWNrX3JjdihzdHJ1Y3QgdGlwY19saW5rICpyLCB1MTYgYWNrZWQs
IHUxNiBnYXAsDQogICAgICAgICAgICAgICAgcmV0dXJuIDA7DQoNCiAgICAgICAgdHJhY2VfdGlw
Y19saW5rX2JjX2FjayhyLCByLT5hY2tlZCwgYWNrZWQsICZsLT50cmFuc21xKTsNCi0gICAgICAg
dGlwY19saW5rX2FkdmFuY2VfdHJhbnNtcShsLCByLCBhY2tlZCwgZ2FwLCBnYSwgeG1pdHEsICZ1
bnVzZWQsICZyYyk7DQorICAgICAgIHRpcGNfbGlua19hZHZhbmNlX3RyYW5zbXEobCwgciwgYWNr
ZWQsIGdhcCwgZ2EsIHJldHJxLCAmdW51c2VkLCAmcmMpOw0KDQogICAgICAgIHRpcGNfbGlua19h
ZHZhbmNlX2JhY2tsb2cobCwgeG1pdHEpOw0KICAgICAgICBpZiAodW5saWtlbHkoIXNrYl9xdWV1
ZV9lbXB0eSgmbC0+d2FrZXVwcSkpKQ0KDQpUaGFua3MgYSBsb3QgZm9yIHlvdXIgZmluZGluZywg
SSB3aWxsIHVwZGF0ZSB0aGlzIHRvIHRoZSBzZXJpZXMhDQoNCkJSL1R1b25nDQoNCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBYdWUsIFlpbmcgPFlpbmcuWHVlQHdpbmRyaXZlci5j
b20+IA0KU2VudDogTW9uZGF5LCBBcHJpbCA2LCAyMDIwIDE6MjAgUE0NClRvOiBUdW9uZyBUb25n
IExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNvbS5hdT47IGptYWxveUByZWRoYXQuY29tOyBt
YWxveUBkb25qb25uLmNvbTsgdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0K
Q2M6IHRpcGMtZGVrIDx0aXBjLWRla0BkZWt0ZWNoLmNvbS5hdT4NClN1YmplY3Q6IFJFOiBbUEFU
Q0ggUkZDIDMvNF0gdGlwYzogZW5hYmxlIGJyb2FkY2FzdCByZXRyYW5zIHZpYSB1bmljYXN0DQoN
CkhpIFR1b25nLA0KDQpTb3JyeSwgSSBoYXZlIHRvIHVzZSBvdXRsb29rIGNsaWVudCB0byByZXBs
eSB0byB5b3VyIGVtYWlsLCB3aGljaCB3aWxsIG1ha2UgdGhlIGVtYWlsIG1lc3NlZCBhIGJpdC4g
DQoNClBsZWFzZSBzZWUgbXkgZm9sbG93aW5nIGNvbW1lbnRzOg0KDQo9PQ0KW1lpbmddIDEuIERp
ZCB5b3UgZXZlciBjb25kdWN0IGNvbXByZWhlbnNpdmUgdmVyaWZpY2F0aW9uIGFib3V0IHRoaXMg
cHJvcG9zYWw/IFdoYXQga2luZHMgb2YgdGVzdCBlbnZpcm9ubWVudCBkaWQgeW91IHVzZSBpbiB5
b3VyIHRlc3Rpbmc/IEZvciBleGFtcGxlLCBob3cgbWFueSBUSVBDIHBoeXNpY2FsIG5vZGVzIHdl
cmUgZ290dGVuIGludm9sdmVkIGludG8geW91ciB0ZXN0aW5nPyBEaWQgdGhlIE5JQ3MgdXNlZCBk
dXJpbmcgeW91ciB0ZXN0aW5nIHN1cHBvcnQgbXVsdGlxdWV1ZSBmZWF0dXJlPyBIb3cgbWFueSBj
b3JlcyB3ZXJlIHRoZXJlIG9uIG9uZSB5b3VyIHVzZWQgcGh5c2ljYWwgVElQQyBtYWNoaW5lPyAN
Cg0KSW4gYWRkaXRpb24sIGlmIHBvc3NpYmxlLCBJIHN1Z2dlc3QgeW91IGNvdWxkIHRyeSB0byBl
bmFibGUgUlRfUFJFRU1QVCBrZXJuZWwgdG8gbWVhc3VyZSB3aGF0IHRocm91Z2hwdXQgcmVzdWx0
cyB3ZSB3b3VsZCBnZXQuIA0KPT0NCg0KSW4gc29tZSBlbnZpcm9ubWVudCwgYnJvYWRjYXN0IHRy
YWZmaWMgaXMgc3VwcHJlc3NlZCBhdCBoaWdoIHJhdGUgKGkuZS4NCmEga2luZCBvZiBiYW5kd2lk
dGggbGltaXQgc2V0dGluZykuIFdoZW4gaXQgaXMgYXBwbGllZCwgVElQQyBicm9hZGNhc3QNCmNh
biBzdGlsbCBydW4gc3VjY2Vzc2Z1bGx5LiBIb3dldmVyLCB3aGVuIGl0IGNvbWVzIHRvIGEgaGln
aCBsb2FkLCBzb21lDQpwYWNrZXRzIHdpbGwgYmUgZHJvcHBlZCBmaXJzdCBhbmQgVElQQyB0cmll
cyB0byByZXRyYW5zbWl0IHRoZW0gYnV0IHRoZQ0KcGFja2V0IHJldHJhbnNtaXNzaW9uIGlzIGlu
dGVudGlvbmFsbHkgYnJvYWRjYXN0IHRvbywgc28gbWFraW5nIHRoaW5ncw0Kd29yc2UgYW5kIG5v
dCBoZWxwZnVsIGF0IGFsbC4NCg0KVGhpcyBjb21taXQgZW5hYmxlcyB0aGUgYnJvYWRjYXN0IHJl
dHJhbnNtaXNzaW9uIHZpYSB1bmljYXN0IHdoaWNoIG9ubHkNCnJldHJhbnNtaXRzIHBhY2tldHMg
dG8gdGhlIHNwZWNpZmljIHBlZXIgdGhhdCBoYXMgcmVhbGx5IHJlcG9ydGVkIGEgZ2FwDQppLmUu
IG5vdCBicm9hZGNhc3RpbmcgdG8gYWxsIG5vZGVzIGluIHRoZSBjbHVzdGVyLCBzbyB3aWxsIHBy
ZXZlbnQgZnJvbQ0KYmVpbmcgc3VwcHJlc3NlZCwgYW5kIGFsc28gcmVkdWNlIHNvbWUgb3Zlcmhl
YWRzIG9uIHRoZSBvdGhlciBwZWVycyBkdWUNCnRvIGR1cGxpY2F0ZXMsIGZpbmFsbHkgaW1wcm92
ZSB0aGUgb3ZlcmFsbCBUSVBDIGJyb2FkY2FzdCBwZXJmb3JtYW5jZS4NCg0KTm90ZTogdGhlIGZ1
bmN0aW9uYWxpdHkgY2FuIGJlIHR1cm5lZCBvbi9vZmYgdmlhIHRoZSBzeXNjdGwgZmlsZToNCg0K
ZWNobyAxID4gL3Byb2Mvc3lzL25ldC90aXBjL2JjX3JldHJ1bmkNCmVjaG8gMCA+IC9wcm9jL3N5
cy9uZXQvdGlwYy9iY19yZXRydW5pDQoNCkRlZmF1bHQgaXMgJzAnLCBpLmUuIHRoZSBicm9hZGNh
c3QgcmV0cmFuc21pc3Npb24gc3RpbGwgd29ya3MgYXMgdXN1YWwuDQo9PQ0KW1lpbmddIDIuICBB
Y3R1YWxseSBJIGhhZCBhIHNpbWlsYXIgaWRlYSBiZWZvcmUsIHNvIEkgYWxzbyB0aGluayB0aGUg
YnJvYWRjYXN0IHBlcmZvcm1hbmNlIG1pZ2h0IGJlIHNpZ25pZmljYW50bHkgaW1wcm92ZWQgdGhy
b3VnaCB0aGlzIHByb3Bvc2FsLCBidXQgd2UgYWN0IGFzIFRJUEMgZGV2ZWxvcGVycywgd2Ugc2hv
dWxkIGV4cGxpY2l0bHkgdGVsbCB1c2VycyB3aGF0IGNvbmRpdGlvbiB0aGV5IHNob3VsZCBlbmFi
bGUgdGhpcyBvcHRpb24gYW5kIHdoYXQgY29uZGl0aW9uIHRoZXkgc2hvdWxkIGRpc2FibGUgaXQs
IG90aGVyd2lzZSwgdXNlcnMgaGF2ZSBubyBpZGVhIGF0IGFsbCBhYm91dCB3aGVuIHRvIGVuYWJs
ZSB0aGlzIG9wdGlvbiBvciB3aGVuIHRvIGRpc2FibGUgdGhpcyBvcHRpb24uIA0KDQogU28sIHBs
ZWFzZSBnaXZlIG1vcmUgcGVyZm9ybWFuY2UgZGF0YSBvYnRhaW5lZCBpbiBkaWZmZXJlbnQgdGVz
dCBjb25kaXRpb25zLiBJZiB0aGlzIHBhdGNoIGNhbiBnaXZlIGJyb2FkY2FzdCBwZXJmb3JtYW5j
ZSBhIGNsZWFyIGJlbmVmaXQgdW5kZXIgYW55IHRlc3QgY29uZGl0aW9uLCBpZGVhbGx5IHdlIGNv
bXBsZXRlbHkgcmVtb3ZlIHRoaXMgb3B0aW9uLiBPdGhlcndpc2UsIGF0IGxlYXN0IHdlIGNhbiB0
ZWxsIHVzZXJzIHdoZW4gdG8gZW5hYmxlIHRoaXMgb3B0aW9uLg0KPT0NCg0KU2lnbmVkLW9mZi1i
eTogVHVvbmcgTGllbiA8dHVvbmcudC5saWVuQGRla3RlY2guY29tLmF1Pg0KDQogaW50IHRpcGNf
bGlua19iY19hY2tfcmN2KHN0cnVjdCB0aXBjX2xpbmsgKnIsIHUxNiBhY2tlZCwgdTE2IGdhcCwN
CiAJCQkgc3RydWN0IHRpcGNfZ2FwX2Fja19ibGtzICpnYSwNCi0JCQkgc3RydWN0IHNrX2J1ZmZf
aGVhZCAqeG1pdHEpDQorCQkJIHN0cnVjdCBza19idWZmX2hlYWQgKnhtaXRxLA0KKwkJCSBzdHJ1
Y3Qgc2tfYnVmZl9oZWFkICpyZXRycSkNCiB7DQogCXN0cnVjdCB0aXBjX2xpbmsgKmwgPSByLT5i
Y19zbmRsaW5rOw0KIAlib29sIHVudXNlZCA9IGZhbHNlOw0KDQo9PQ0KMy4gW1lpbmddIFNvcnJ5
LCBJIGZlbHQgYSBiaXQgY29uZnVzZWQuIE9uZSBuZXcgInJldHJxIiBwYXJhbWV0ZXIgd2FzIGlu
dHJvZHVjZWQsIGJ1dCBJIGRpZG4ndCBmaW5kIHdoZXJlIGl0IHdhcyB1c2VkIGluIHRoaXMgZnVu
Y3Rpb24uIA0KQ2FuIHlvdSBwbGVhc2UgZXhwbGFpbiBob3cgdGhlIG5ldyBwYXJhbWV0ZXIgd29y
a3M/DQo9PQ0KDQpUaGFua3MsDQpZaW5nDQoNCkBAIC0yNDYwLDcgKzI0NjEsOCBAQCBpbnQgdGlw
Y19saW5rX2JjX25hY2tfcmN2KHN0cnVjdCB0aXBjX2xpbmsgKmwsIHN0cnVjdCBza19idWZmICpz
a2IsDQogCQlyZXR1cm4gMDsNCiANCiAJaWYgKGRub2RlID09IHRpcGNfb3duX2FkZHIobC0+bmV0
KSkgew0KLQkJcmMgPSB0aXBjX2xpbmtfYmNfYWNrX3JjdihsLCBhY2tlZCwgdG8gLSBhY2tlZCwg
TlVMTCwgeG1pdHEpOw0KKwkJcmMgPSB0aXBjX2xpbmtfYmNfYWNrX3JjdihsLCBhY2tlZCwgdG8g
LSBhY2tlZCwgTlVMTCwgeG1pdHEsDQorCQkJCQkgIHhtaXRxKTsNCiAJCWwtPnN0YXRzLnJlY3Zf
bmFja3MrKzsNCiAJCXJldHVybiByYzsNCiAJfQ0KZGlmZiAtLWdpdCBhL25ldC90aXBjL2xpbmsu
aCBiL25ldC90aXBjL2xpbmsuaA0KaW5kZXggMGEwZmE3MzUwNzIyLi40ZDA3NjhjZjkxZDUgMTAw
NjQ0DQotLS0gYS9uZXQvdGlwYy9saW5rLmgNCisrKyBiL25ldC90aXBjL2xpbmsuaA0KQEAgLTE0
Nyw3ICsxNDcsOCBAQCB1MTYgdGlwY19nZXRfZ2FwX2Fja19ibGtzKHN0cnVjdCB0aXBjX2dhcF9h
Y2tfYmxrcyAqKmdhLCBzdHJ1Y3QgdGlwY19saW5rICpsLA0KIAkJCSAgc3RydWN0IHRpcGNfbXNn
ICpoZHIsIGJvb2wgdWMpOw0KIGludCB0aXBjX2xpbmtfYmNfYWNrX3JjdihzdHJ1Y3QgdGlwY19s
aW5rICpsLCB1MTYgYWNrZWQsIHUxNiBnYXAsDQogCQkJIHN0cnVjdCB0aXBjX2dhcF9hY2tfYmxr
cyAqZ2EsDQotCQkJIHN0cnVjdCBza19idWZmX2hlYWQgKnhtaXRxKTsNCisJCQkgc3RydWN0IHNr
X2J1ZmZfaGVhZCAqeG1pdHEsDQorCQkJIHN0cnVjdCBza19idWZmX2hlYWQgKnJldHJxKTsNCiB2
b2lkIHRpcGNfbGlua19idWlsZF9iY19zeW5jX21zZyhzdHJ1Y3QgdGlwY19saW5rICpsLA0KIAkJ
CQkgc3RydWN0IHNrX2J1ZmZfaGVhZCAqeG1pdHEpOw0KIHZvaWQgdGlwY19saW5rX2JjX2luaXRf
cmN2KHN0cnVjdCB0aXBjX2xpbmsgKmwsIHN0cnVjdCB0aXBjX21zZyAqaGRyKTsNCmRpZmYgLS1n
aXQgYS9uZXQvdGlwYy9ub2RlLmMgYi9uZXQvdGlwYy9ub2RlLmMNCmluZGV4IGViNmI2MmRlODFh
Ny4uOTE3YWQzOTIwZmFjIDEwMDY0NA0KLS0tIGEvbmV0L3RpcGMvbm9kZS5jDQorKysgYi9uZXQv
dGlwYy9ub2RlLmMNCkBAIC0xNzcxLDcgKzE3NzEsNyBAQCBzdGF0aWMgdm9pZCB0aXBjX25vZGVf
YmNfc3luY19yY3Yoc3RydWN0IHRpcGNfbm9kZSAqbiwgc3RydWN0IHRpcGNfbXNnICpoZHIsDQog
CXN0cnVjdCB0aXBjX2xpbmsgKnVjbDsNCiAJaW50IHJjOw0KIA0KLQlyYyA9IHRpcGNfYmNhc3Rf
c3luY19yY3Yobi0+bmV0LCBuLT5iY19lbnRyeS5saW5rLCBoZHIpOw0KKwlyYyA9IHRpcGNfYmNh
c3Rfc3luY19yY3Yobi0+bmV0LCBuLT5iY19lbnRyeS5saW5rLCBoZHIsIHhtaXRxKTsNCiANCiAJ
aWYgKHJjICYgVElQQ19MSU5LX0RPV05fRVZUKSB7DQogCQl0aXBjX25vZGVfcmVzZXRfbGlua3Mo
bik7DQpkaWZmIC0tZ2l0IGEvbmV0L3RpcGMvc3lzY3RsLmMgYi9uZXQvdGlwYy9zeXNjdGwuYw0K
aW5kZXggNThhYjNkNmRjZGNlLi45N2E2MjY0YTI5OTMgMTAwNjQ0DQotLS0gYS9uZXQvdGlwYy9z
eXNjdGwuYw0KKysrIGIvbmV0L3RpcGMvc3lzY3RsLmMNCkBAIC0zNiw3ICszNiw3IEBADQogI2lu
Y2x1ZGUgImNvcmUuaCINCiAjaW5jbHVkZSAidHJhY2UuaCINCiAjaW5jbHVkZSAiY3J5cHRvLmgi
DQotDQorI2luY2x1ZGUgImJjYXN0LmgiDQogI2luY2x1ZGUgPGxpbnV4L3N5c2N0bC5oPg0KIA0K
IHN0YXRpYyBzdHJ1Y3QgY3RsX3RhYmxlX2hlYWRlciAqdGlwY19jdGxfaGRyOw0KQEAgLTc1LDYg
Kzc1LDEzIEBAIHN0YXRpYyBzdHJ1Y3QgY3RsX3RhYmxlIHRpcGNfdGFibGVbXSA9IHsNCiAJCS5l
eHRyYTEgICAgICAgICA9IFNZU0NUTF9PTkUsDQogCX0sDQogI2VuZGlmDQorCXsNCisJCS5wcm9j
bmFtZQk9ICJiY19yZXRydW5pIiwNCisJCS5kYXRhCQk9ICZzeXNjdGxfdGlwY19iY19yZXRydW5p
LA0KKwkJLm1heGxlbgkJPSBzaXplb2Yoc3lzY3RsX3RpcGNfYmNfcmV0cnVuaSksDQorCQkubW9k
ZQkJPSAwNjQ0LA0KKwkJLnByb2NfaGFuZGxlcgk9IHByb2NfZG91bG9uZ3ZlY19taW5tYXgsDQor
CX0sDQogCXt9DQogfTsNCiANCi0tIA0KMi4xMy43DQoNCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRp
cGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
