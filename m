Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D96227EC5
	for <lists+tipc-discussion@lfdr.de>; Tue, 21 Jul 2020 13:26:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jxqPW-0007UX-Qe; Tue, 21 Jul 2020 11:26:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jxqPV-0007UN-SY
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 11:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IOKS+NZqZdUyvuebs+KPPXIPTBUSsYs0ncW8NMX8nhY=; b=EWhVwbr4VkOubg3Nr3dEtFyfLv
 HxqBqrpwSqBJsw0WAz84LyS8QR7t36nlCF/1cXz0AurB2kaTjRYRhzq6TAdhtm6qY/Ott7IdNe7yO
 5k1SNgNeImK5Hh3sDIYtZaVcBYi4Ltfuy0OWoXslcdpmLziGloZf270C2UzC5xIZspIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IOKS+NZqZdUyvuebs+KPPXIPTBUSsYs0ncW8NMX8nhY=; b=b9XOXXRgXXutIyBkXoN0VnnlE9
 6HwDIFcc5dJBdtqUIUZdoGpuqrRsTD4+S2HIK1Y0WAdv8tMpp6t2LYyguVi7A552E2KBqk7B7X/I4
 GVjDBHGK5SC5Q5vXfkcJEU8TT/ccsrkjmUoW8EkO2H0kZoVDomgQTNKDNmCt27jRdw3Q=;
Received: from mail-eopbgr10101.outbound.protection.outlook.com
 ([40.107.1.101] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxqPS-00Bzio-1e
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 11:26:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LQqY59oFUx2enLDbTpqewX7Eb+SgGN9nNQlP4JOd8yL3FBd9jAdJVqmRzmm/nrHzh1KWIOqa4LlWHp0IloyzIOPhFhzqtYZ0SJVeJorJoZyX4hrzoSbNsZlyw5Th2wR0wkZvXyX+2B+X7AxHgSQq22NnJfcx+BIlgyTw1Q0pTZOb0E01JOJKKFCF524IdWpOgU6rQLeRdQbDP0nb/A5YEzCo61UYyGYtEMCb2/sEdgHFNtyZCx7U86/aeqaEUyjBBjEs+z57hFW4TcEcgjLKvfelr896pwzGLLFKVrpinc/N28ecmShtrxHU3c0s2kBOx2CwbnRrYxQVdbRkswEc6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOKS+NZqZdUyvuebs+KPPXIPTBUSsYs0ncW8NMX8nhY=;
 b=oR2pkNaic5wN4rBiqjJ49F0ZwCG8RTIVFAzJ7q3N0Mj3fA854HN7xt3y6Js0YBHlqAc/QRC3FeCPiYas8TWUgmCVRBGuygK25HAmIZ5WFIzlu3go22BvdTiP2rot6OMXXRGPg4cCY419O3mv5BdLW8KIujEEZp56WbDI+Ra5OqGr+XKz+sMNIiofh/0OyNHdOSilRw/PjvDH7Ps2qjeHl50a3s9o01T8jMJvbDKbvfOpzjSMQgKMtuNxHW/9EAAUsTNoW6xyF2ulMHwArMBIsNMhSswwTZUQO1RnY3i/WaWUibmc1jG1b1FPNrYyMKoXRAYQSwFpsZsfZICKcHIH8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOKS+NZqZdUyvuebs+KPPXIPTBUSsYs0ncW8NMX8nhY=;
 b=ovcoJWMiPJnTZCPivnDeSytXCsLdGYSDO6H1D5rwnuDfT+tJ8LhNfa7sitYBk9+yENysN3SHiPsSLIOFwndBzWwEeBY4Sy1ZJn5v+sD+8bWEZyqiH4zVmePnSDba9T4H1DJhkV8SBFvOxGt+YyOnfCn4joWM6LLbkkSow7D7s54=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM5PR0501MB2418.eurprd05.prod.outlook.com (2603:10a6:203:9::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.23; Tue, 21 Jul
 2020 11:26:01 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::9d1c:861f:f91e:7e5d]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::9d1c:861f:f91e:7e5d%7]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 11:26:01 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Xin Long <lucien.xin@gmail.com>
Thread-Topic: [tipc-discussion] [net-next] tipc: fix NULL pointer dereference
 in streaming
Thread-Index: AQHWOWS0hd2o/b9bbU+flCfe7ulRFqkSL64AgAAAYoA=
Date: Tue, 21 Jul 2020 11:26:01 +0000
Message-ID: <AM6PR0502MB3925A9F210B21A39D9F62AE7E2780@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200603050601.19570-1-tuong.t.lien@dektech.com.au>
 <CADvbK_cE8boY0Y7CcNS_Vh5gZGf4+Pb2urG993V9wnuS=vQK3g@mail.gmail.com>
In-Reply-To: <CADvbK_cE8boY0Y7CcNS_Vh5gZGf4+Pb2urG993V9wnuS=vQK3g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3da5cba3-f2de-42b4-b05f-08d82d68d907
x-ms-traffictypediagnostic: AM5PR0501MB2418:
x-microsoft-antispam-prvs: <AM5PR0501MB2418D4A7FDB55D3B2EB2BF56E2780@AM5PR0501MB2418.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5SKAPZLLVtZqOgi/yajxJOxvyIHhk8YNgAeQecxBvZnziL66RIKnTPg9llSksrEAGVepiLyPfvB6FfjcfnpfDHHws2qTAlmytWEBoKQE6mScKfOawbm8nvkxDyjOt/G2a54WaPInt9de1WWSdnatHhCD7gAlJLpI5bJFQFYX+geusmltvOiAw7ToA550jp3i5mbJMRET5URtCOpB6Fbqzl7bIBnrww0D2ZkhfWGeESaeArilLR81a888BmW0gL4/OaNDQ38Etl8GPD5bONwHqbQyZ28ETVyTrUzBpKaqllA5kXMQXEmu+7NfMH+MzZYQg8f9rLIr6UhE/4lj6NWeda7mHsBl1mwKPGXm/NC0/lO4FvAb5px21Lr5wdcEmSdIQ+DiYay/EhBQ1PBawwXRMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(136003)(366004)(396003)(39850400004)(4326008)(5660300002)(2906002)(8676002)(8936002)(7696005)(6506007)(186003)(33656002)(53546011)(508600001)(71200400001)(54906003)(66946007)(64756008)(66446008)(66556008)(66476007)(26005)(316002)(966005)(55016002)(6916009)(76116006)(52536014)(9686003)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: uak3j5oujEQsg+tPbTOq8kMEQORQVRlRBsJlTToI0QJu9QGxHXMu3eMDvmQnNxuEWZIAR80+uhvp9Is36Nl2Wu67Xu5B5RpmbI05RTTNrQ8nY8jghJdw/zkwv4I1kQb/236fmeDIhgRiW+doebMtEzdZRV1/2XkpPoinlRDnbonz6ChVXuk1OFq5Q7w/rlq88wXDgYU3IqU5EsMVWu248+bvnSc4dm9OMOhIvsnSIkSBALvn/5DiHqK19sTessnCHuO2AaPlpv3VWfDpSAPgFYktsNnC3nt0WiIXPjR//S51oVPM9GM8QzWHyeClevcke/Pj3htzsCa1RSqD2dDZJH5HgoLGKvtkJMrhDz5cp5tgzSwosuxlWCsPnh++ejHnfGMm36FNSLLVKYxaJAownVLXLnIT9npvF4JJIhg2QuiH5ArS9yHjy5d43aBDGncUH/9UJ0Ka/gJRu3HPiSGjTNncPS4O/kRoKM2VLzg3YK0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0502MB3925.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3da5cba3-f2de-42b4-b05f-08d82d68d907
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2020 11:26:01.3493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lhi/vkngWGyHhlpSrqxAMSwQI7T7lc1LGNvoMvuHcMTc1+1F6P0TyIQ4gbe/wqn1UTWhWEedJAzMe7mjb0KU3QiIe4IkxCMtkRTw3EIy/Sg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0501MB2418
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.101 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jxqPS-00Bzio-1e
Subject: Re: [tipc-discussion] [net-next] tipc: fix NULL pointer dereference
 in streaming
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
Cc: network dev <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, davem <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWGluIExvbmcgPGx1Y2ll
bi54aW5AZ21haWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDIxLCAyMDIwIDY6MjMgUE0N
Cj4gVG86IFR1b25nIFRvbmcgTGllbiA8dHVvbmcudC5saWVuQGRla3RlY2guY29tLmF1Pg0KPiBD
YzogZGF2ZW0gPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBqbWFsb3lAcmVkaGF0LmNvbTsgbWFsb3lA
ZG9uam9ubi5jb207IFlpbmcgWHVlIDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPjsgbmV0d29yayBk
ZXYNCj4gPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+OyB0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0DQo+IFN1YmplY3Q6IFJlOiBbdGlwYy1kaXNjdXNzaW9uXSBbbmV0LW5leHRd
IHRpcGM6IGZpeCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4gc3RyZWFtaW5nDQo+IA0KPiBP
biBXZWQsIEp1biAzLCAyMDIwIGF0IDE6MDYgUE0gVHVvbmcgTGllbiA8dHVvbmcudC5saWVuQGRl
a3RlY2guY29tLmF1PiB3cm90ZToNCj4gPg0KPiA+IHN5emJvdCBmb3VuZCB0aGUgZm9sbG93aW5n
IGNyYXNoOg0KPiA+DQo+ID4gZ2VuZXJhbCBwcm90ZWN0aW9uIGZhdWx0LCBwcm9iYWJseSBmb3Ig
bm9uLWNhbm9uaWNhbCBhZGRyZXNzIDB4ZGZmZmZjMDAwMDAwMDAxOTogMDAwMCBbIzFdIFBSRUVN
UFQgU01QIEtBU0FODQo+ID4gS0FTQU46IG51bGwtcHRyLWRlcmVmIGluIHJhbmdlIFsweDAwMDAw
MDAwMDAwMDAwYzgtMHgwMDAwMDAwMDAwMDAwMGNmXQ0KPiA+IENQVTogMSBQSUQ6IDcwNjAgQ29t
bTogc3l6LWV4ZWN1dG9yMzk0IE5vdCB0YWludGVkIDUuNy4wLXJjNi1zeXprYWxsZXIgIzANCj4g
PiBIYXJkd2FyZSBuYW1lOiBHb29nbGUgR29vZ2xlIENvbXB1dGUgRW5naW5lL0dvb2dsZSBDb21w
dXRlIEVuZ2luZSwgQklPUyBHb29nbGUgMDEvMDEvMjAxMQ0KPiA+IFJJUDogMDAxMDpfX3RpcGNf
c2VuZHN0cmVhbSsweGJkZS8weDExZjAgbmV0L3RpcGMvc29ja2V0LmM6MTU5MQ0KPiA+IENvZGU6
IDAwIDAwIDAwIDAwIDQ4IDM5IDVjIDI0IDI4IDQ4IDBmIDQ0IGQ4IGU4IGZhIDNlIGRiIGY5IDQ4
IGI4IDAwIDAwIDAwIDAwIDAwIGZjIGZmIGRmIDQ4IDhkIGJiIGM4IDAwIDAwIDAwIDQ4IDg5IGZh
IDQ4IGMxIGVhIDAzIDw4MD4gM2MNCj4gMDIgMDAgMGYgODUgZTIgMDQgMDAgMDAgNDggOGIgOWIg
YzggMDAgMDAgMDAgNDggYjggMDAgMDAgMDANCj4gPiBSU1A6IDAwMTg6ZmZmZmM5MDAwM2VmNzgx
OCBFRkxBR1M6IDAwMDEwMjAyDQo+ID4gUkFYOiBkZmZmZmMwMDAwMDAwMDAwIFJCWDogMDAwMDAw
MDAwMDAwMDAwMCBSQ1g6IGZmZmZmZmZmODc5N2ZkOWQNCj4gPiBSRFg6IDAwMDAwMDAwMDAwMDAw
MTkgUlNJOiBmZmZmZmZmZjg3OTdmZGU2IFJESTogMDAwMDAwMDAwMDAwMDBjOA0KPiA+IFJCUDog
ZmZmZjg4ODA5OTg0ODA0MCBSMDg6IGZmZmY4ODgwOWE1ZjY0NDAgUjA5OiBmZmZmZmJmZmYxODYw
YjRjDQo+ID4gUjEwOiBmZmZmZmZmZjhjMzA1YTVmIFIxMTogZmZmZmZiZmZmMTg2MGI0YiBSMTI6
IGZmZmY4ODgwOTk4NDg1N2UNCj4gPiBSMTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiBmZmZmODg4
MDg2YWE0MDAwIFIxNTogMDAwMDAwMDAwMDAwMDAwMA0KPiA+IEZTOiAgMDAwMDAwMDAwMDliNDg4
MCgwMDAwKSBHUzpmZmZmODg4MGFlNzAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAN
Cj4gPiBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzDQo+
ID4gQ1IyOiAwMDAwMDAwMDIwMDAwMTQwIENSMzogMDAwMDAwMDBhN2ZkZjAwMCBDUjQ6IDAwMDAw
MDAwMDAxNDA2ZTANCj4gPiBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAw
MDAwIERSMjogMDAwMDAwMDAwMDAwMDAwMA0KPiA+IERSMzogMDAwMDAwMDAwMDAwMDAwMCBEUjY6
IDAwMDAwMDAwZmZmZTBmZjAgRFI3OiAwMDAwMDAwMDAwMDAwNDAwDQo+ID4gQ2FsbCBUcmFjZToN
Cj4gPiAgdGlwY19zZW5kc3RyZWFtKzB4NGMvMHg3MCBuZXQvdGlwYy9zb2NrZXQuYzoxNTMzDQo+
ID4gIHNvY2tfc2VuZG1zZ19ub3NlYyBuZXQvc29ja2V0LmM6NjUyIFtpbmxpbmVdDQo+ID4gIHNv
Y2tfc2VuZG1zZysweGNmLzB4MTIwIG5ldC9zb2NrZXQuYzo2NzINCj4gPiAgX19fX3N5c19zZW5k
bXNnKzB4MzJmLzB4ODEwIG5ldC9zb2NrZXQuYzoyMzUyDQo+ID4gIF9fX3N5c19zZW5kbXNnKzB4
MTAwLzB4MTcwIG5ldC9zb2NrZXQuYzoyNDA2DQo+ID4gIF9fc3lzX3NlbmRtbXNnKzB4MTk1LzB4
NDgwIG5ldC9zb2NrZXQuYzoyNDk2DQo+ID4gIF9fZG9fc3lzX3NlbmRtbXNnIG5ldC9zb2NrZXQu
YzoyNTI1IFtpbmxpbmVdDQo+ID4gIF9fc2Vfc3lzX3NlbmRtbXNnIG5ldC9zb2NrZXQuYzoyNTIy
IFtpbmxpbmVdDQo+ID4gIF9feDY0X3N5c19zZW5kbW1zZysweDk5LzB4MTAwIG5ldC9zb2NrZXQu
YzoyNTIyDQo+ID4gIGRvX3N5c2NhbGxfNjQrMHhmNi8weDdkMCBhcmNoL3g4Ni9lbnRyeS9jb21t
b24uYzoyOTUNCj4gPiAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDkvMHhiMw0K
PiA+IFJJUDogMDAzMzoweDQ0MDE5OQ0KPiA+IC4uLg0KPiA+DQo+ID4gVGhpcyBidWcgd2FzIGJp
c2VjdGVkIHRvIGNvbW1pdCAwYTNlMDYwZjM0MGQgKCJ0aXBjOiBhZGQgdGVzdCBmb3IgTmFnbGUN
Cj4gPiBhbGdvcml0aG0gZWZmZWN0aXZlbmVzcyIpLiBIb3dldmVyLCBpdCBpcyBub3QgdGhlIGNh
c2UsIHRoZSB0cm91YmxlIHdhcw0KPiA+IGZyb20gdGhlIGJhc2UgaW4gdGhlIGNhc2Ugb2YgemVy
byBkYXRhIGxlbmd0aCBtZXNzYWdlIHNlbmRpbmcsIHdlIHdvdWxkDQo+ID4gdW5leHBlY3RlZGx5
IG1ha2UgYW4gZW1wdHkgJ3R4cScgcXVldWUgYWZ0ZXIgdGhlICd0aXBjX21zZ19hcHBlbmQoKScg
aW4NCj4gPiBOYWdsZSBtb2RlLg0KPiA+DQo+ID4gQSBzaW1pbGFyIGNyYXNoIGNhbiBiZSBnZW5l
cmF0ZWQgZXZlbiB3aXRob3V0IHRoZSBiaXNlY3RlZCBwYXRjaCBidXQgYXQNCj4gPiB0aGUgbGlu
ayBsYXllciB3aGVuIGl0IGFjY2Vzc2VzIHRoZSBlbXB0eSBxdWV1ZS4NCj4gPg0KPiA+IFdlIHNv
bHZlIHRoZSBpc3N1ZXMgYnkgYnVpbGRpbmcgYXQgbGVhc3Qgb25lIGJ1ZmZlciB0byBnbyB3aXRo
IHNvY2tldCdzDQo+ID4gaGVhZGVyIGFuZCBhbiBvcHRpb25hbCBkYXRhIHNlY3Rpb24gdGhhdCBt
YXkgYmUgZW1wdHkgbGlrZSB3aGF0IHdlIGhhZA0KPiA+IHdpdGggdGhlICd0aXBjX21zZ19idWls
ZCgpJy4NCj4gPg0KPiA+IE5vdGU6IHRoZSBwcmV2aW91cyBjb21taXQgNGMyMWRhYWUzZGJjICgi
dGlwYzogRml4IE5VTEwgcG9pbnRlcg0KPiA+IGRlcmVmZXJlbmNlIGluIF9fdGlwY19zZW5kc3Ry
ZWFtKCkiKSBpcyBvYnNvbGV0ZWQgYnkgdGhpcyBvbmUgc2luY2UgdGhlDQo+ID4gJ3R4cScgd2ls
bCBiZSBuZXZlciBlbXB0eSBhbmQgdGhlIGNoZWNrIG9mICdza2IgIT0gTlVMTCcgaXMgdW5uZWNl
c3NhcnkNCj4gPiBidXQgaXQgaXMgc2FmZSBhbnl3YXkuDQo+IEhpLCBUdW9uZw0KPiANCj4gSWYg
Y29tbWl0IDRjMjFkYWFlM2RiYyBpcyBvYnNvbGV0ZWQgYnkgdGhpcyBvbmUsIGNhbiB5b3UgcGxl
YXNlDQo+IHNlbmQgYSBwYXRjaCB0byByZXZlcnQgaXQ/DQo+IA0KPiBUaGFua3MuDQpIaSBYaW4s
DQoNClRoYXQgcGF0Y2ggaW5jbHVkZXMgYSBzYW5pdHkgY2hlY2sgd2hpY2ggaXMgYWx3YXlzIHRy
dWUgYW5kIHNhZmUsIHNvIEkgZG9u4oCZdCB0aGluaw0Kd2UgbmVlZCB0byByZXZlcnQgaXQuIERv
IHlvdSBhZ3JlZT8NCg0KQlIvVHVvbmcNCj4gDQo+ID4NCj4gPiBSZXBvcnRlZC1ieTogc3l6Ym90
KzhlYWM2ZDAzMGU3ODA3YzIxZDMyQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20NCj4gPiBGaXhl
czogYzBiY2ViOTdkYjllICgidGlwYzogYWRkIHNtYXJ0IG5hZ2xlIGZlYXR1cmUiKQ0KPiA+IEFj
a2VkLWJ5OiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNvbS5hdT4NCj4gPiAtLS0NCj4gPiAg
bmV0L3RpcGMvbXNnLmMgfCA0ICsrLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9tc2cu
YyBiL25ldC90aXBjL21zZy5jDQo+ID4gaW5kZXggYzBhZmNkNjI3YzVlLi4wNDZlNGNiM2FjZWEg
MTAwNjQ0DQo+ID4gLS0tIGEvbmV0L3RpcGMvbXNnLmMNCj4gPiArKysgYi9uZXQvdGlwYy9tc2cu
Yw0KPiA+IEBAIC0yMjEsNyArMjIxLDcgQEAgaW50IHRpcGNfbXNnX2FwcGVuZChzdHJ1Y3QgdGlw
Y19tc2cgKl9oZHIsIHN0cnVjdCBtc2doZHIgKm0sIGludCBkbGVuLA0KPiA+ICAgICAgICAgYWNj
b3VudGVkID0gc2tiID8gbXNnX2Jsb2NrcyhidWZfbXNnKHNrYikpIDogMDsNCj4gPiAgICAgICAg
IHRvdGFsID0gYWNjb3VudGVkOw0KPiA+DQo+ID4gLSAgICAgICB3aGlsZSAocmVtKSB7DQo+ID4g
KyAgICAgICBkbyB7DQo+ID4gICAgICAgICAgICAgICAgIGlmICghc2tiIHx8IHNrYi0+bGVuID49
IG1zcykgew0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHNrYiA9IHRpcGNfYnVmX2FjcXVp
cmUobXNzLCBHRlBfS0VSTkVMKTsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBpZiAodW5s
aWtlbHkoIXNrYikpDQo+ID4gQEAgLTI0NSw3ICsyNDUsNyBAQCBpbnQgdGlwY19tc2dfYXBwZW5k
KHN0cnVjdCB0aXBjX21zZyAqX2hkciwgc3RydWN0IG1zZ2hkciAqbSwgaW50IGRsZW4sDQo+ID4g
ICAgICAgICAgICAgICAgIHNrYl9wdXQoc2tiLCBjcHkpOw0KPiA+ICAgICAgICAgICAgICAgICBy
ZW0gLT0gY3B5Ow0KPiA+ICAgICAgICAgICAgICAgICB0b3RhbCArPSBtc2dfYmxvY2tzKGhkcikg
LSBjdXJyOw0KPiA+IC0gICAgICAgfQ0KPiA+ICsgICAgICAgfSB3aGlsZSAocmVtKTsNCj4gPiAg
ICAgICAgIHJldHVybiB0b3RhbCAtIGFjY291bnRlZDsNCj4gPiAgfQ0KPiA+DQo+ID4gLS0NCj4g
PiAyLjEzLjcNCj4gPg0KPiA+DQo+ID4NCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiA+IHRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QNCj4g
PiB0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0DQo+ID4gaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uDQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
