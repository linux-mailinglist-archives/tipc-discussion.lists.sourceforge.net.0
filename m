Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 990B81A77F2
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Apr 2020 11:57:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jOIJy-0006IU-VS; Tue, 14 Apr 2020 09:57:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jOIJx-0006Hl-2s
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 09:57:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D7Y3ZF+jxQCYhu964BF64pqv9XMN9RlyGzER0JaiG1I=; b=U18D05VNHCktojwh6AcUiafq5I
 UfJ3mZqULBD5bAANV2guMkr8gRodY7E/7ZBg3CtOfTSo0vjQdMA0Mal25yX/UNgt6P3m2oEuZcCbm
 vOdLIgZp90otzTPPMwDK6E6XdYt3i1mEdrwCkGgZJrEm146EOqmZDNYYcp6AG9/fqiq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D7Y3ZF+jxQCYhu964BF64pqv9XMN9RlyGzER0JaiG1I=; b=RyBN5KhLxPf5Eczg3GRt8GkKMS
 C62DqwcvQ7FBHYKit/Yji1LgKAunwSrCDcT0rx/vBDTDS0uVQ1QI24pqflUTNr8ptVHxTQMQB42FK
 17OKtudtFzAFjw8yuQ7jhtneT/NyS2bpwqIi5qg9oTNtp3ZrwuXZEhzdRK/53h/pwfv0=;
Received: from mail-eopbgr50091.outbound.protection.outlook.com ([40.107.5.91]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOIJo-000ePg-3a
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 09:57:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bZr0dg8la+OnuleKJTZAS8agTJMdt+bYV508WkY6McwmeLqeood75RWUJLi/VD5j4qQJpnfLAxXGxQavGK5dsZk+lqjCUyoHB+NN4T54gvw39rb/RklgTTVMAIHnckRm9jttw7CbIk+y7GkLQJEtsPQfox57q+Fgi1ufe5/er7pSNfc0ilFSaAI1IDJ//hpF3dsi+ghWVNtvAdIwUoIQxpamLO6LLpHGeRdxwKfATQGpoVujl4wihtnsa7MB0/odQurV3JbihCXj115efWN8YmPNwYyjbtV/I7Vc3OVRg7rS8Fis4ICIox3pDeJlxoof+RlZXdthTd0XTi8J5yYtvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7Y3ZF+jxQCYhu964BF64pqv9XMN9RlyGzER0JaiG1I=;
 b=ZaICMcY8il/O3sqRvDLBnkBichzllGDv6wqq31V2nPoWwTSYszcYzbOlXqfot5BtVZJsho3NREL/Ltym6JKb60rrbNjjyaNkJSIOR5M5Y3cM8dyzTKw/r67wdTBJrqd4Qy6zNv+sOmzcWM9BUasO6tf5YKezWAuu6Bfg4bOJg5q/E2EswsjAVAoVpDYCYVSR+veqz64oAohEkL7Cr25oreMMBjy1439bXaGfWRRYgnHLam7bChdgxKyRHYvqg0/o9gA4lDl80O4O4i1lo/cY57CWW/Q0atp7GOfJWL+lLUJSaTxbENwBUmWu8CPWwFJm68BAEm2gc6wZtwIR3h9K2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7Y3ZF+jxQCYhu964BF64pqv9XMN9RlyGzER0JaiG1I=;
 b=bZSNu/iyqQ6xEFTIdceTvrXLTFurIUVawh7yUq1Xyu1fWjNxb1nTDSj1gD7VK6WaIxNp4DZqB5mfq4CEI2DFyziKRGZN3qHlfLr4xOO3P/mO7JNL+JDND9YFSI0vGq89tx03+5EYXvK/jdgRg5YMqUSb9R99ll//54+rO1jgSKU=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3894.eurprd05.prod.outlook.com (2603:10a6:209:a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 09:57:13 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 09:57:13 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-discussion
 (tipc-discussion@lists.sourceforge.net)"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net-next 1/1] tipc: add smart nagle feature
Thread-Index: AQJQgLSB4XCGGSaF6YfIyneEGz0RAQI8VNQ8p3AOzFA=
Date: Tue, 14 Apr 2020 09:57:13 +0000
Message-ID: <AM6PR0502MB392565A1B329E99471270B3BE2DA0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <1572440441-474-1-git-send-email-jon.maloy@ericsson.com>
 <20191030.121657.2103053708806525889.davem@davemloft.net>
In-Reply-To: <20191030.121657.2103053708806525889.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tuong.t.lien@dektech.com.au; 
x-originating-ip: [113.22.229.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 614d3165-3df9-4e3f-38da-08d7e05a34f1
x-ms-traffictypediagnostic: AM6PR0502MB3894:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB38941DCDBF7CE47D1C8252F6E2DA0@AM6PR0502MB3894.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(346002)(396003)(366004)(39840400004)(376002)(136003)(107886003)(186003)(66476007)(2906002)(4326008)(8936002)(66946007)(110136005)(26005)(71200400001)(316002)(66556008)(86362001)(8676002)(33656002)(7696005)(9686003)(53546011)(52536014)(966005)(76116006)(6506007)(66446008)(81156014)(478600001)(64756008)(55016002)(5660300002);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rSYLhjTXgJOixiQyq6Y7RxZVmraaH06pVp9rvX9c2s2A2fXebtkXB877lFVhZSRRiIeh6LLmaMwPWjuqaOG/iOZ0R8yp4uWPPTCRAsSzOTr/pPUPwOx4gGtel0ChFfol7iJuHf44LP+12uBFJFd42LSnIC5mYBKXTBadTkw24cjJa9wSr0KhFAndUEJcKwDSW0w3hoc1RehOqC9O85Mb0biO6Y097YBHVxRWMJfz+K/8ZPEMx242DcoFx4daRAtTqa18zxf75r2eoZ163N3NNLxPVNwQOlC6UVId81qbEkJYlt7Yry7kXRAkva4TG6OobVnJr8rTt0SgapSfRzvc4o2yhWQDRPOWcfuhKQ6BiekK9SPKLOJSFLXQf2+OXpvYVoqJ2lL40jMt7l+LB3q87ZG5lOpBp2U2tcSVF/bqLAB0wAxM9YTY06oXmD6jV7amnQGklFXnqy71jloZKRpSHnZSgZwq24TPVPr6MmHyZfjhGsk7aRiBw1aJbMHVuT0p0BCU0XtA0JKFtZPF3Swskw==
x-ms-exchange-antispam-messagedata: 4HT5nHRLF3mpPSp+lHZWPqpoeNVTc+qs6bXz6CubUE9iuaWC7pntO+20MCFZPW0G+weDw/8vsk1VtHGXwnF2Gsi1sshAJ0WaaQ+N808hyTRr0LPigkoOjYvzAYnl7pDugZCkW/imiwJSS/LGAkBspw==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 614d3165-3df9-4e3f-38da-08d7e05a34f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 09:57:13.5157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WlBhyibHqnQ4fkTWh9Uw4WOhZYZd4ULds0MhWYmCvLcmNx/K2lpCZXF1TNxcoUzSbS2TzGo22AGESTYcB5S4D5B/+jkHyWBBimTqQdbMX9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3894
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.91 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOIJo-000ePg-3a
Subject: [tipc-discussion] FW: [net-next 1/1] tipc: add smart nagle feature
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

SGkgSm9uLA0KDQpBcyBtZW50aW9uZWQgaW4gdGhlIGxhc3QgbWVldGluZywgd2UgZ290IGEgcmVw
b3J0IGZyb20gY3VzdG9tZXIgdGhhdCBUSVBDIGhhcyBzb21lIGxhdGVuY3kgaW5jcmVhc2VkICh+
IDMwLTUwJSkgaW4gbWVzc2FnZSBzdHJlYW1pbmcsIGl0J3MgYWZ0ZXIgYmFja3BvcnRpbmcgc29t
ZSByZWNlbnQgcGF0Y2hlcy4gQnkgb25seSBkaXNhYmxpbmcvZW5hYmxpbmcgdGhlIE5hZ2xlIGZl
YXR1cmUsIHdlIGFyZSBub3cgYWJsZSB0byBjb25maXJtIHRoaXMgTmFnbGUgcGF0Y2ggY2F1c2lu
ZyB0aGUgbGF0ZW5jeSBpc3N1ZS4NCg0KV2UgbWF5IG5lZWQgdG8gdHVybiB0aGlzIGZlYXR1cmUg
b2ZmIGJ5IGRlZmF1bHQgKGkuZS4gaW5pdGlhbGl6aW5nICd0c2stPm5vZGVsYXkgPSB0cnVlJykg
YnV0IGxpa2VseSBubyBvbmUgd2lsbCB0cnkgdG8gdHVybiBpdCBvbiBhZ2FpbiBieSBzZXR0aW5n
ICdUSVBDX05PREVMQVknID0gZmFsc2Ug4pi5LiBIb3dldmVyLCBJIHdvbmRlciBpZiB0aGF0IGlu
Y3JlYXNlIGluIGxhdGVuY3kgaXMgZXhwZWN0ZWQsIHNpbmNlIHdlIGRlY2xhcmVkIHRoYXQgaXQg
bXVzdCBiZSA8IDEgUlRULi4uPw0KTm93IHdoZW4gdGVzdGluZyB3aXRoIG91ciBiZW5jaG1hcmsg
dG9vbCwgSSBjYW4gaW5kZWVkIG9ic2VydmUgYSBsYXJnZSBkZWxheSwgc29tZSBtZXNzYWdlcyBo
YXZlIGJlZW4gYnVuZGxlZCBhbmQgcXVldWVkIGluIHRoZSBzb2NrZXQgYmFja2xvZyBmb3IgaHVu
ZHJlZHMgb2YgbWlsbGlzZWNvbmRzIGJlZm9yZSB0aGV5IGNvdWxkIGJlIHNlbnQgb3V0IHdoZW4g
dGhlIHJlcXVpcmVkICdBQ0snIGNhbWUuIEkgaGF2ZSBzb21lIGNvbmNlcm5zIGhlcmU6DQoNCjEp
IE9uIHRoZSByZWNlaXZpbmcgc2lkZSwgdGhlIHJlcXVpcmVkICdBQ0snIGlzIG9ubHkgZG9uZSB3
aGVuIGFwcGxpY2F0aW9uIGFjdHVhbGx5IGdldHMgdGhlIHdob2xlIGRhdGEuIEV2ZW4gaWYgb25s
eSBwYXJ0IG9mIHRoZSBsYXN0IGJ1bmRsZSBpcyByZWNlaXZlZCwgd2Ugd2lsbCBub3QgZG8gdGhl
ICdBQ0snIGFzIHJlcXVpcmVkLiBXaHkgZG8gd2UgbmVlZCB0byBkbyB0aGF0IHNvIHN0cmljdGx5
PyBUaGlzIHdpbGwgY2F1c2Ugc29tZSBsYXRlbmN5IHNpbmNlIHRoZSByZWNlaXZlciBkb2Vzbid0
IGFsd2F5cyBnZXQgdGhlIG1lc3NhZ2UgYXMgcXVpY2sgYXMgdGhlIHNlbmRlci4gSSB0aGluayB3
ZSBjYW4gc2VwYXJhdGUgaXQgZnJvbSB0aGUgdHJhZGl0aW9uYWwgJ0NPTk5fQUNLJyB3aGljaCBp
cyBmb3IgdGhlIHJlY2VpdmVyIGJ1ZmZlciBmbG93IGNvbnRyb2wsIHRoZSBOYWdsZSAnQUNLJyBz
aG91bGQgYmUgZG9uZSBhcyBzb29uIGFzIHBvc3NpYmxlIGkuZS4ganVzdCBhZnRlciB0aGUgbGlu
ayBsYXllciB0aGF0IGluZGljYXRlcyB0aGUgcmVjZWl2aW5nIHNpZGUgaGFzIGdvdCB0aGUgYnVu
ZGxlcywgc28gdGhlIHNlbmRpbmcgc2lkZSBjYW4gcHVzaCB0aGUgbmV4dCBvbmVzIGlmIGFueT8N
Cg0KMikgVGhlICd0c2stPm9uZXdheScgZG9lc24ndCByZWFsbHkgbWFrZSBzZW5zZSBhcyBpdCBp
cyBvbmx5IHJlc2V0IGFmdGVyIHRoZSBwZWVyIHNlbmRzIGJhY2sgYSBkYXRhIG1lc3NhZ2UuIElu
IGNhc2UgdGhlcmUgaXMgb25seSBvbmUgc2lkZSBzZW5kaW5nIGRhdGEgb24gYSBzb2NrZXQgKGxp
a2Ugb3VyIGJlbmNobWFyayB0b29sKSwgdGhlIGNvdW50ZXIganVzdCBrZWVwcyBpbmNyZWFzaW5n
LCBzbyB3ZSBuZXZlciBsZWF2ZSB0aGUgTmFnbGUgbW9kZSBhZnRlciBlbnRlcmluZy4uLiBEbyB3
ZSBuZWVkIHRvIGZvcmNlIGl0IHRvIGxlYXZlIHRoZSBOYWdlbCBtb2RlIHNvbWVob3csIGZvciBl
eGFtcGxlOiB3aGVuIHJlY2VpdmluZyB0aGUgTmFnbGUgJ0FDSycgd2l0aG91dCBhbnkgYnVuZGxl
cyB0byBiZSBwdXNoZWQ/DQoNCjMpIERvIHlvdSBoYXZlIGFueSBvdGhlciBpZGVhcyB0aGF0IGNv
dWxkIGNhdXNlIHRoZSBsYXRlbmN5IGluY3JlYXNlPw0KDQpCUi9UdW9uZw0KDQotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogRGF2aWQgTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0
PiANClNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDMxLCAyMDE5IDI6MTcgQU0NClRvOiBqb24ubWFs
b3lAZXJpY3Nzb24uY29tDQpDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbHhpbkByZWRoYXQu
Y29tOyBlZHVtYXpldEBnb29nbGUuY29tOyB0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0DQpTdWJqZWN0OiBSZTogW3RpcGMtZGlzY3Vzc2lvbl0gW25ldC1uZXh0IDEvMV0gdGlw
YzogYWRkIHNtYXJ0IG5hZ2xlIGZlYXR1cmUNCg0KRnJvbTogSm9uIE1hbG95IDxqb24ubWFsb3lA
ZXJpY3Nzb24uY29tPg0KRGF0ZTogV2VkLCAzMCBPY3QgMjAxOSAxNDowMDo0MSArMDEwMA0KDQo+
IFdlIGludHJvZHVjZSBhIGZlYXR1cmUgdGhhdCB3b3JrcyBsaWtlIGEgY29tYmluYXRpb24gb2Yg
VENQX05BR0xFIGFuZA0KPiBUQ1BfQ09SSywgYnV0IHdpdGhvdXQgc29tZSBvZiB0aGUgd2Vha25l
c3NlcyBvZiB0aG9zZS4gSW4gcGFydGljdWxhciwNCj4gd2Ugd2lsbCBub3Qgb2JzZXJ2ZSBsb25n
IGRlbGl2ZXJ5IGRlbGF5cyBiZWNhdXNlIG9mIGRlbGF5ZWQgYWNrcywgc2luY2UNCj4gdGhlIGFs
Z29yaXRobSBpdHNlbGYgZGVjaWRlcyBpZiBhbmQgd2hlbiBhY2tzIGFyZSB0byBiZSBzZW50IGZy
b20gdGhlDQo+IHJlY2VpdmluZyBwZWVyLg0KPiANCj4gLSBUaGUgbmFnbGUgcHJvcGVydHkgYXMg
c3VjaCBpcyBkZXRlcm1pbmVkIGJ5IG1hbmlwdWxhdGluZyBhIG5ldw0KPiAgICdtYXhuYWdsZScg
ZmllbGQgaW4gc3RydWN0IHRpcGNfc29jay4gSWYgY2VydGFpbiBjb25kaXRpb25zIGFyZSBtZXQs
DQo+ICAgJ21heG5hZ2xlJyB3aWxsIGRlZmluZSBtYXggc2l6ZSBvZiB0aGUgbWVzc2FnZXMgd2hp
Y2ggY2FuIGJlIGJ1bmRsZWQuDQo+ICAgSWYgaXQgaXMgc2V0IHRvIHplcm8gbm8gbWVzc2FnZXMg
YXJlIGV2ZXIgYnVuZGxlZCwgaW1wbHlpbmcgdGhhdCB0aGUNCj4gICBuYWdsZSBwcm9wZXJ0eSBp
cyBkaXNhYmxlZC4NCj4gLSBBIHNvY2tldCB3aXRoIHRoZSBuYWdsZSBwcm9wZXJ0eSBlbmFibGVk
IGVudGVycyBuYWdsZSBtb2RlIHdoZW4gbW9yZQ0KPiAgIHRoYW4gNCBtZXNzYWdlcyBoYXZlIGJl
ZW4gc2VudCBvdXQgd2l0aG91dCByZWNlaXZpbmcgYW55IGRhdGEgbWVzc2FnZQ0KPiAgIGZyb20g
dGhlIHBlZXIuDQo+IC0gQSBzb2NrZXQgbGVhdmVzIG5hZ2xlIG1vZGUgd2hlbmV2ZXIgaXQgcmVj
ZWl2ZXMgYSBkYXRhIG1lc3NhZ2UgZnJvbQ0KPiAgIHRoZSBwZWVyLg0KPiANCj4gSW4gbmFnbGUg
bW9kZSwgbWVzc2FnZXMgc21hbGxlciB0aGFuICdtYXhuYWdsZScgYXJlIGFjY3VtdWxhdGVkIGlu
IHRoZQ0KPiBzb2NrZXQgd3JpdGUgcXVldWUuIFRoZSBsYXN0IGJ1ZmZlciBpbiB0aGUgcXVldWUg
aXMgbWFya2VkIHdpdGggYSBuZXcNCj4gJ2Fja19yZXF1aXJlZCcgYml0LCB3aGljaCBmb3JjZXMg
dGhlIHJlY2VpdmluZyBwZWVyIHRvIHNlbmQgYSBDT05OX0FDSw0KPiBtZXNzYWdlIGJhY2sgdG8g
dGhlIHNlbmRlciB1cG9uIHJlY2VwdGlvbi4NCj4gDQo+IFRoZSBhY2N1bXVsYXRlZCBjb250ZW50
cyBvZiB0aGUgd3JpdGUgcXVldWUgaXMgdHJhbnNtaXR0ZWQgd2hlbiBvbmUgb2YNCj4gdGhlIGZv
bGxvd2luZyBldmVudHMgb3IgY29uZGl0aW9ucyBvY2N1ci4NCj4gDQo+IC0gQSBDT05OX0FDSyBt
ZXNzYWdlIGlzIHJlY2VpdmVkIGZyb20gdGhlIHBlZXIuDQo+IC0gQSBkYXRhIG1lc3NhZ2UgaXMg
cmVjZWl2ZWQgZnJvbSB0aGUgcGVlci4NCj4gLSBBIFNPQ0tfV0FLRVVQIHBzZXVkbyBtZXNzYWdl
IGlzIHJlY2VpdmVkIGZyb20gdGhlIGxpbmsgbGV2ZWwuDQo+IC0gVGhlIHdyaXRlIHF1ZXVlIGNv
bnRhaW5zIG1vcmUgdGhhbiA2NCAxayBibG9ja3Mgb2YgZGF0YS4NCj4gLSBUaGUgY29ubmVjdGlv
biBpcyBiZWluZyBzaHV0IGRvd24uDQo+IC0gVGhlcmUgaXMgbm8gQ09OTl9BQ0sgbWVzc2FnZSB0
byBleHBlY3QuIEkuZS4sIHRoZXJlIGlzIGN1cnJlbnRseQ0KPiAgIG5vIG91dHN0YW5kaW5nIG1l
c3NhZ2Ugd2hlcmUgdGhlICdhY2tfcmVxdWlyZWQnIGJpdCB3YXMgc2V0LiBBcyBhDQo+ICAgY29u
c2VxdWVuY2UsIHRoZSBmaXJzdCBtZXNzYWdlIGFkZGVkIGFmdGVyIHdlIGVudGVyIG5hZ2xlIG1v
ZGUNCj4gICBpcyBhbHdheXMgc2VudCBkaXJlY3RseSB3aXRoIHRoaXMgYml0IHNldC4NCj4gDQo+
IFRoaXMgbmV3IGZlYXR1cmUgZ2l2ZXMgYSA1MC0xMDAlIGltcHJvdmVtZW50IG9mIHRocm91Z2hw
dXQgZm9yIHNtYWxsDQo+IChpLmUuLCBsZXNzIHRoYW4gTVRVIHNpemUpIG1lc3NhZ2VzLCB3aGls
ZSBpdCBtaWdodCBhZGQgdXAgdG8gb25lIFJUVA0KPiB0byBsYXRlbmN5IHRpbWUgd2hlbiB0aGUg
c29ja2V0IGlzIGluIG5hZ2xlIG1vZGUuDQo+IA0KPiBBY2tlZC1ieTogWWluZyBYdWUgPHlpbmcu
eHVlQHdpbmRyZWl2ZXIuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb24gTWFsb3kgPGpvbi5tYWxv
eUBlcmljc3Nvbi5jb20+DQoNCkFwcGxpZWQsIHRoYW5rcyBKb24uDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnRpcGMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QNCnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQNCmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbg0KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Np
b24K
