Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DFC3A280B
	for <lists+tipc-discussion@lfdr.de>; Thu, 10 Jun 2021 11:16:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lrGnY-0006a1-6B; Thu, 10 Jun 2021 09:16:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1lrGnV-0006Zo-Fl
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Jun 2021 09:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qby1h8jeJ+yE7aiy9B8zIZ1gvwzsogEzUh/WJloViKc=; b=EtftayDXv9RVI31D5B8vs0DBtk
 hrAiKCXFCWgOV7ydbEdqamJLkDO7AkwrybBtVk+5yfno8VVInb0ISRhZk2uQlJeTkCJOccRu250QS
 Ul7ORUrk3c4f4jffX02XXvHOy7YsH76vhMs9N6V1Z7YRnZMypcDpoCCJxm4yTsWQ68bI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qby1h8jeJ+yE7aiy9B8zIZ1gvwzsogEzUh/WJloViKc=; b=Ikek554UPBhAEhTMap5k9o5Zvc
 vhrXL94QeZ9D2pDPC39HxHStpm3l0x3Tv02y/g8tU/b8gneAm5nPwfxA0ta4LA9bez4fO1DmbT6b3
 sNBwaH5ge9ksQx7/NE+fbyAkvXHB/bxoDugi5+6rUdhdL/xVh7cMR/uE5O/G01O5poGQ=;
Received: from mail-eopbgr60135.outbound.protection.outlook.com
 ([40.107.6.135] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lrGnK-0001TR-Lv
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Jun 2021 09:16:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hpbox+BXvgwK7oEDdBagRYlJYd1acLXcdDnCJLKPl61UXPS68g5pz/UF90AKrTmbnTQ+aT7lrJOcP6K9NEx3zbCRcLZFB3iNMVGF+iZ2UwAbWjjz5CXReD38H8fBnwMAtBGu77v2rqkZ3hMYQTeqVlVtCU4d9YB0qkTRLuMFR3FYMOnVHyHXL6T+EbW55J6FJ4T/HEXtphyJ72IrJTbTbWd5ypoPB4Eho6VDtq93VHHWXKH7c/esgMLq+EXqiQoHfQoplxd72G4VR7rlSitH3UMFt9qeG/kCCUt7t/UN/4jrlQy01iUwf7R+1D5wleFhB2gJ58mvm4uAdq3JuDp12g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qby1h8jeJ+yE7aiy9B8zIZ1gvwzsogEzUh/WJloViKc=;
 b=mqaPjtVlyYOY/I04sPE7r9USYNkAHKrmpu7hutzfQmgVkEU+a5zF4sy3pZxWq5WP6fn4ep4af+9zSLljA102XIb681M8GSRDQd6QWmrj3dJ7+KCVDF5cI4Z0Hnj2Zt26taIbzBUNO1dP67smbxikqFUE5RuppNOjO6bNg8QK1wLVIIyFs5m/tvmYEydIUJ/IomVfjHmY0LD+1ayNtfrxq3jrL2kDC4TYA5pU7Fv/+ofIQN4zgWnGysr5dbYOK2t9b0roVx2yz1VLt5X0fBqyu48Za411BOor0IskQT7ez+xFjbu13jVjmUmUmJkdDbJgwnFHfzN28VnAt1BbopULXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qby1h8jeJ+yE7aiy9B8zIZ1gvwzsogEzUh/WJloViKc=;
 b=WKTioPcZLtTHroXfqnmGBKDX6/2zexUm410dI5TrZd6zTFihv1Dmtb8IbcI/mvF616SNaD92xaekapdkzezmZXecjSUFqv9B1DmIo1WRUmlz4kkP05eHmFm6FhTpkh3iqVKXNVy0oKOgWlM83V4mvu55urFv1/8Rgn/0A6dVGEI=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB9PR05MB7708.eurprd05.prod.outlook.com (2603:10a6:10:21f::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4219.20; Thu, 10 Jun 2021 09:16:01 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::ed1f:9927:aedf:b8a4]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::ed1f:9927:aedf:b8a4%7]) with mapi id 15.20.4219.022; Thu, 10 Jun 2021
 09:16:01 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, Menglong Dong <menglong8.dong@gmail.com>
Thread-Topic: [PATCH v2 net-next 0/2] net: tipc: fix FB_MTU eat two pages and
 do some code cleanup
Thread-Index: AQHXXdi07gLrgxLiKkmo2mrs8uBAGasM9ong
Date: Thu, 10 Jun 2021 09:16:01 +0000
Message-ID: <DB7PR05MB4315396511FA6701DB6DAA6188359@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20210609103251.534270-1-dong.menglong@zte.com.cn>
 <672e78df-5bb0-78eb-3022-f942978138f5@redhat.com>
 <CADxym3ZCV94BzHviTxK1G5Kt1Z+1LbbNr6=B=9GjBqGfzrk_Kw@mail.gmail.com>
 <caa07557-985c-7e50-5b80-d8cdcd902e19@redhat.com>
In-Reply-To: <caa07557-985c-7e50-5b80-d8cdcd902e19@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [113.20.114.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3117236-f466-4253-0c53-08d92bf05dc4
x-ms-traffictypediagnostic: DB9PR05MB7708:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB9PR05MB7708F71A103FF9E574A6AFA188359@DB9PR05MB7708.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tYvQYN+27D9Cnmu5lAlrfo/0qmYl5udilcPYzxIHbOKBr9O1qfmhinNsjXa0qJTNpwNu184ky7g2LWMUOlif4C4qPGDo2eCrqqd+7ziZ5treRNTNoVl3Lu+GV0RcWqbocgoCu+rhZY4C0LPJbk2fkpLK+SiD4AjjZsQkveg37/53hCdbB9eKoSpKwftkl2gwlzk/6LDbkpCJdEQzvNPedAmJbhYOYdCGF0wVtzPfp26orYjnQN7TmZOrYl76gdGMqPCQerUlfCV511AjqBdoYZRRBD2MgBgOa/clqga5IFu8H+5e0hgC62RB5qrNUwbt8GIUaau9pSU4RLVuJVblJaExSl0W/P5yqXACf/SpWtybBRR3VvWdBx7smuqf1KSfpq6nrLe9RbX4qw1II6ESCnLvOKc5+PuBerevXfl23BXjPApuHhsNFALvhy2WnstR3M93k7guwvLVyisAJdbaiRkxE5mekaFpuzVM9No01hM9b1Ee24eo1gsV9bpmEJzEphDOse6BVl2WixegdnYbMnH/PVxwsW3NEpsYS1jH/E7TQUIC3Y6fbcW1XxvGF0AVR848hbXcKvpa0hZiUxHGPkV6rAq434np4DNei0x7Hfw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(136003)(376002)(346002)(39840400004)(53546011)(478600001)(6506007)(8676002)(86362001)(2906002)(38100700002)(83380400001)(4326008)(71200400001)(110136005)(186003)(107886003)(9686003)(66446008)(64756008)(52536014)(66476007)(5660300002)(66556008)(316002)(55016002)(54906003)(66946007)(26005)(76116006)(122000001)(7696005)(8936002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?SUtORG1zL09NdjBlbUUra2pMS2lvNW0rZ0ZOemtqMVhjMEthZHhpdnpCcmlZ?=
 =?utf-8?B?amlyS2xxMm9IbU1FV0tXK1BFaWRMODBicjNLTGYxZTRSRE1QSDdXMGFGTzM2?=
 =?utf-8?B?WnM2RXRJSi9TQkNRVDRHQjhaanM4ZWFiSU56UTB0djJnMjdTWmhIbW03dlFG?=
 =?utf-8?B?THUvS0FsUW9LWE9sTnMyWXAzZVo0MTE3MHg5OUVvRlp0aU5RTG5YdmdhcnZv?=
 =?utf-8?B?dlBra3czc3pOTlVPdlhkVDkrdmN4V2xIMlhOakx6QkRmNit1UWVWakRBdW9y?=
 =?utf-8?B?RUJoODB4bHU5ODFraTVWVFRxUXEydE9GbFQ4Y1RZcElMblhRaFdIc252Q2RH?=
 =?utf-8?B?bjlzbGZ6MXI0Z2dIbTFBLzJ3dTg4dXBhbGQ1QjVZc0VmRjRGMG5DZGVyRnZS?=
 =?utf-8?B?L0VqR1Qxb09JdGdyekhTckVrT3hhaW53MFVaUUlobndOMzNZbzBORWF3OTlo?=
 =?utf-8?B?YzZINXNQdzFjYkQxTnhWZUJCVXBaT0RGS1l3MlhpQllMY3FFdWVMTDhkbWVx?=
 =?utf-8?B?MGZVSmFXNUpWYmUwdnd0R3orbEZiSXJTSjRsVUxScG5BWjFJcjUwdG5jUndt?=
 =?utf-8?B?ei9scnZoK0RUY0pDRVJDZ3Q2NnpReWxEN2MxQmZ5NGlnQ1pXVnEwbk5PTTAz?=
 =?utf-8?B?dTBtVitwYmQxcUY5V1Q0eklPL3Q3MTRVS1FKTFNnQjNyNWwrSXpINDV2ZHhH?=
 =?utf-8?B?ak5xTFpKbUtUSzM2U1RJRnV4OVh0WXUrTThRMnVOOGJvRFkrZFlUMWFXai9K?=
 =?utf-8?B?M2hyenZlWmxWa1dxVjk2cTVVdVNOSXNoZWJ6QmlxT0pNc3N0emRFcFo3QTN6?=
 =?utf-8?B?Vk04aXNpV3JGU3hTWDhxamdlK2Mra1hMOWJ4WWw4YlhlN2lpd0NPWWIrL0xM?=
 =?utf-8?B?NERRNmRqZllsQ1Rmbkt6SVhVUWxYMGNQbUUrYzdUdFdSMmVVajBOa0g1YzZE?=
 =?utf-8?B?aGdXZlY0c3paRXkwWCt5a2pOYzJtVFM0S1Q5S2N6QllXb3RUTnRvUmFWN1Nn?=
 =?utf-8?B?ZUswUU9ESGJWNDh2QndCczhRK1VyV2t0V0ROT1lLVmpUOGFRcTJ6NW1kUmZB?=
 =?utf-8?B?S3YyTFZoV2pwUWN5dmNYVVZVRnBuVFl3T3VVenJGQ0RrVFQ4bFQ2dUY0QWhE?=
 =?utf-8?B?dVoyUnAyTmtDeGMva0pBZklQc09FaVcxbEpJYkJQbHhmdDR4Mzgvd1BIdjZV?=
 =?utf-8?B?UTA5RlBFS2srRHV1eTRHbVFkNWpJVysxZ0czSnY5a1VUUys5elgrSktLeW1w?=
 =?utf-8?B?WVVqMGllOEVKeFJFUFVJMEUvb3JvT0Y2VVJhTlZ5NDNsMTFXK3B4elhaUER6?=
 =?utf-8?B?cWNxeURQNHpaTndtSGsrckhuU0VkWEdyaDI1UFBLTHBtT3BGcXMwUTdZdndh?=
 =?utf-8?B?V2lZMGNNU0Fld0U5VnhrT1I0aldSZDdaWldPZE5sU2V3REFMMGdiaTBuYXVp?=
 =?utf-8?B?TDk3UTgxV0pNa21wby84aG5DRjc5QkRUSm5HUnJMektiazVWb0VHQ1BKUzZw?=
 =?utf-8?B?U3ZOblVkWFNrMHVzQVVwdlhDakVvdll2U2lZU1hqVGJDUmNWbVVlKzkxMFpH?=
 =?utf-8?B?aFFlZGd2ZWdxVVZPc2J5Qy9kY1pWQ3J1Vnp6TEwvMnRjMkRuVzdNQnI4cGlu?=
 =?utf-8?B?a2xveERmdFYrc0gwWXB0M2h5QU1JaUJLV1ptVHJxUW5OVzQ4S245ZmE5a0JS?=
 =?utf-8?B?L2R3bFZ5Y3krNGU5cDNvdDl4U0NzWWJXQlhuQm4vRHVlNXVTdEZJQkVhSFhS?=
 =?utf-8?Q?XRcUMo0L8FqBP2HSawTmBpeJLgpMvMhj1CrT/Sj?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3117236-f466-4253-0c53-08d92bf05dc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 09:16:01.3961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P6DGteRgn1502VOjLZI7Ej/ng6rldCdic+IzqE5CtYnA4fQDbinv5F7mLOOiR9xRLatGgdajNlwPLww3YRKqExlNEYc4Wt9OcTgEkwd0IO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR05MB7708
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zte.com.cn]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.135 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lrGnK-0001TR-Lv
Subject: Re: [tipc-discussion] [PATCH v2 net-next 0/2] net: tipc: fix FB_MTU
 eat two pages and do some code cleanup
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
Cc: Xin Long <lxin@redhat.com>, tipc-dek <tipc-dek@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

UmVtb3ZlIHRpcGMtZGVrIG1haWwgbGlzdCB0byBhdm9pZCBib3RoZXJpbmcgb3RoZXIgcGVvcGxl
Lg0KDQpCZXN0IHJlZ2FyZHMsDQpUdW5nIE5ndXllbg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KRnJvbTogSm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4gDQpTZW50OiBUaHVyc2Rh
eSwgSnVuZSAxMCwgMjAyMSA0OjEyIFBNDQpUbzogTWVuZ2xvbmcgRG9uZyA8bWVuZ2xvbmc4LmRv
bmdAZ21haWwuY29tPg0KQ2M6IHlpbmcueHVlQHdpbmRyaXZlci5jb207IHRpcGMtZGlzY3Vzc2lv
bkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ7IFhpbiBMb25nIDxseGluQHJlZGhhdC5jb20+OyB0aXBj
LWRlayA8dGlwYy1kZWtAZGVrdGVjaC5jb20uYXU+DQpTdWJqZWN0OiBSZTogW1BBVENIIHYyIG5l
dC1uZXh0IDAvMl0gbmV0OiB0aXBjOiBmaXggRkJfTVRVIGVhdCB0d28gcGFnZXMgYW5kIGRvIHNv
bWUgY29kZSBjbGVhbnVwDQoNCg0KT24gNi85LzIxIDg6NTYgQU0sIE1lbmdsb25nIERvbmcgd3Jv
dGU6DQo+IE9uIFdlZCwgSnVuIDksIDIwMjEgYXQgNjo0NyBQTSBKb24gTWFsb3kgPGptYWxveUBy
ZWRoYXQuY29tPiB3cm90ZToNCj4+DQo+Pg0KPj4gT24gNi85LzIxIDY6MzIgQU0sIG1lbmdsb25n
OC5kb25nQGdtYWlsLmNvbSB3cm90ZToNCj4+PiBGcm9tOiBNZW5nbG9uZyBEb25nIDxkb25nLm1l
bmdsb25nQHp0ZS5jb20uY24+DQo+Pj4NCj4+PiBJbiB0aGUgZmlyc3QgcGF0Y2gsIEZCX01UVSBp
cyByZWRlZmluZWQgdG8gbWFrZSBzdXJlIGRhdGEgc2l6ZSB3aWxsIG5vdA0KPj4+IGV4Y2VlZCBQ
QUdFX1NJWkUuIEJlc2lkZXMsIEkgcmVtb3ZlZCB0aGUgYWxpZ25tZW50IGZvciBidWZfc2l6ZSBp
bg0KPj4+IHRpcGNfYnVmX2FjcXVpcmUsIGJlY2F1c2Ugc2tiX2FsbG9jX2ZjbG9uZSB3aWxsIGRv
IHRoZSBhbGlnbm1lbnQgam9iLg0KPj4+DQo+Pj4gSW4gdGhlIHNlY29uZCBwYXRjaCwgSSByZW1v
dmVkIGFsaWduKCkgaW4gbXNnLmMgYW5kIHJlcGxhY2UgaXQgd2l0aA0KPj4+IEFMSUdOKCkuDQo+
Pj4NCj4+Pg0KPj4+DQo+Pj4NCj4+PiBNZW5nbG9uZyBEb25nICgyKToNCj4+PiAgICAgbmV0OiB0
aXBjOiBmaXggRkJfTVRVIGVhdCB0d28gcGFnZXMNCj4+PiAgICAgbmV0OiB0aXBjOiByZXBsYWNl
IGFsaWduKCkgd2l0aCBBTElHTiBpbiBtc2cuYw0KPj4+DQo+Pj4gICAgbmV0L3RpcGMvYmNhc3Qu
YyB8ICAyICstDQo+Pj4gICAgbmV0L3RpcGMvbXNnLmMgICB8IDMxICsrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tLS0NCj4+PiAgICBuZXQvdGlwYy9tc2cuaCAgIHwgIDMgKystDQo+Pj4gICAg
MyBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkNCj4+Pg0K
Pj4gTkFDSy4NCj4+IFlvdSBtdXN0IGhhdmUgbWlzc2VkIG15IGxhc3QgbWFpbCBiZWZvcmUgeW91
IHNlbnQgb3V0IHRoaXMuICBXZSBoYXZlIHRvDQo+PiBkZWZpbmUgYSBzZXBhcmF0ZSBtYWNybyBm
b3IgYmNhc3QuYywgc2luY2UgdGhvc2UgYnVmZmVycyBzb21ldGltZXMgd2lsbA0KPj4gbmVlZCBl
bmNyeXB0aW9uLg0KPj4gU29ycnkgZm9yIHRoZSBjb25mdXNpb24uDQo+IE5vLCBubywgSSBkaWRu
J3QgbWlzcyB5b3VyIG1haWwuIEkgdGhpbmsgaXQgY2FuIG1ha2UgdXMgY2xlYXIgYWJvdXQgd2hh
dCBhbmQgaG93DQo+IHRvIGRvIGJ5IHNlbmRpbmcgdGhlIFYyIHBhdGNoZXMuDQo+DQo+IFNvIHdl
IGNhbiBkZWZpbmUgdHdvIHZlcnNpb25zICdGQl9NVFUnIGZvciBiY2FzdC5jIGFuZCBtc2cuYywg
c3VjaCBhcyBDUllQVE9fTVRVDQo+IGFuZCBOT05fQ1JZUFRPX01UVS4gQW5kIHdpdGhpbiB0aXBj
X2J1Zl9hY3F1aXJlKCksIHdlIGRlY2lkZSB3aGljaCB2ZXJzaW9uDQo+IEJVRl9IRUFEUk9PTSB0
byB1c2UgYnkgdGhlIGRhdGEgc2l6ZT8gU3VjaCBhczoNCj4NCj4gaW50IGJ1Zl9zaXplOw0KPiBp
ZiAoSVNfRU5BQkxFRChDT05GSUdfVElQQ19DUllQVE8pICYmIHNpemUgPT0gTk9OX0NSWVBUT19N
VFUpIHsNCj4gICAgICBidWZfc2l6ZSA9IHNpemUgKyBCVUZfSEVBRFJPT01fbm9uLWNyeXB0byAr
IEJVRl9UQUlMUk9PTV9ub24tY3J5cHRvOw0KPiB9IGVsc2Ugew0KPiAgICAgIGJ1Zl9zaXplID0g
c2l6ZSArIEJVRl9IRUFEUk9PTV9jcnlwdG8gKyBCVUZfVEFJTFJPT01fY3J5cHRvOw0KPiB9DQo+
DQo+IElzIHRoaXMgZmVlbGluZz8NCj4gKEl0J3MgYSBsaXR0bGUgd2VpcmQgdG8gY2hlY2sgd2hl
dGhlciB0aGUgZGF0YSBzaG91bGQgYmUgY3J5cHRvIGJ5IGRhdGEgc2l6ZSkuDQo+DQo+IFRoYW5r
cyENCj4gTWVuZ2xvbmcgRG9uZw0KKFJlbW92ZWQgbmV0ZGV2LCBEYXZpZCBNaWxsZXIgZXRjIGZy
b20gdGhyZWFkKQ0KDQpJIHRoaW5rIG91ciBtYWluIG1pc3Rha2UgaXMgdGhhdCB3ZSBhcmUgdHJ5
aW5nIHRvICJjb21wZW5zYXRlIiBmb3IgYSANCmJlaGF2aW9yIGluIHRpcGNfYnVmX2FjcXVpcmUo
KSB0aGF0IGRvZW5zJ3QgZml0IG91ciBwdXJwb3Nlcy4NCg0KV2hhdCBpZiB3ZSBkbyB0aGUgZm9s
bG93aW5nOg0KMSkgV2UgZGVmaW5lIEJVRl9IRUFEUk9PTSBhbmQgQlVGX1RBSUxST09NIGFzIHdl
IGRvIG5vdywgcGx1cyBhIEZCX01UVSANCmFzIHlvdSBzdWdnZXN0LCBhbGwgaW5zaWRlIG1zZy5j
Lg0KMikgV2UgY3JlYXRlIGEgbmV3IGlubGluZSBmdW5jdGlvbiB0aXBjX2FsbG9jX3NrYihpbnQg
aGVhZHJvb20sIGludCANCnRhaWxyb29tLCBpbnQgc2l6ZSkgaW4gbXNnLmMNCiDCoMKgwqDCoCBU
aGlzIGZ1bmN0aW9uIGRvZXMgdGhlIGpvYiB0aGF0IHRpcGNfYnVmX2FjcWlyZSgpIGRvZXMgbm93
Lg0KMykgV2UgbGV0IHRpcGNfYnVmX2FjcXVpcmUoKSBjYWxsIHRoaXMgZnVuY3Rpb24gYXMgDQp0
aXBjX2FsbG9jX3NrYihCVUZfSEVBRFJPT00sIEJVRl9UQUlMUk9PTSwgc2l6ZSk7DQogwqDCoMKg
IEFsdGVybmF0aXZlbHksIHdlIHNraXAgdGhlIEJVRl9IRUFEUk9PTS9CVUZfVEFJTFJPT00gbWFj
cm9zIA0KYWx0b2dldGhlciBhbmRtYWtlIHRoZSBjb2RlIGluIHRpcGNfYnVmX2FjcXVpcmUoKSBj
b25kaXRpb25hbCBhcyB5b3UgDQpkaWQsIGJ1dCB3aXRob3V0IHRlc3RpbmcgZm9yIHNpemUuIEFj
dHVhbGx5LCBJIHRoaW5rIEkgbGlrZSB0aGlzIGJldHRlci4NCjQpIFdlIGxldCB0aGUgZmFsbGJh
Y2sgZnVuY3Rpb24gaW4gbXNnLmMgY2FsbCBpdCBhcyANCnRpcGNfYWxsb2Nfc2tiKExMX01BWF9I
RUFERVIgKyA0OCwgMCwgT05FUEFHRV9TS0IpOw0KNSkgV2UgbGV0IHRoZSB1c2VyIGluIGJjYXN0
LmMgZ2V0IGFjY2VzIHRvIHRoZSBjYWxjdWxhdGVkIHZhbHVlIG9mIA0KRkJfTVRVIGFzIGEgZnVu
Y3Rpb24gb3IgZ2xvYmFsIHZhbHVlLCBsaWtlIHlvdSBkaWQgaW4gdjIuDQoNCkkgc3VnZ2VzdCB5
b3Ugc2VuZCB2MyB0byB0aXBjLWRpc2N1c3Npb24gKGlmIHlvdSBhcmUgYSBtZW1iZXIpIGFuZCB0
aGUgDQpyZWNpcGllbnRzIG9mIHRoaXMgbWFpbCBmaXJzdCwgc28gd2UgZG9uJ3Qgc3BhbSB0aGUg
bmV0ZGV2IGxpc3Qgd2l0aCANCmludGVybWVkaWF0ZSB2ZXJzaW9ucyBvZiB0aGlzIHNlcmllcy4N
Cg0KLy8vam9uDQoNCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby90aXBjLWRpc2N1c3Npb24K
