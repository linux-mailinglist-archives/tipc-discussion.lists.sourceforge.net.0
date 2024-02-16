Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF07F8575DB
	for <lists+tipc-discussion@lfdr.de>; Fri, 16 Feb 2024 07:13:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1rarTE-00051L-FT;
	Fri, 16 Feb 2024 06:13:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1rarTA-00051C-F1
 for tipc-discussion@lists.sourceforge.net;
 Fri, 16 Feb 2024 06:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8TeEIoOUuqJV9rg3w3sd9du6n8y/9uqSJTO8EngyO1E=; b=Y4v4ZKAf7E+Yg7EIDQMj3qyFJM
 LmFHIAqBIxJkuHcmOEZetCu71e6XyAwuj4gDjxB3RYiTToIXitdmlYF1eKXgsYq49I6FfnezMX/vq
 U0O4jjL0oZhtGDYrvGi90tTNfqXPWMWMYQ1Q5YG0W5RM55K/Do5sbTc+qxuYofhsKyBo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8TeEIoOUuqJV9rg3w3sd9du6n8y/9uqSJTO8EngyO1E=; b=MrSacqbMxxv5svsQ4st0mY+NCV
 OmkWOQowlw0JpP3uREE/j2qZUaEil8+Fci8qa+nHjpGPLcRcVy7oTordBK9RHOi4k4EkX1EnKp7gc
 wEwh+AofkNNDeIfgPd5jTfoKYtTKO7dGQkn5PsT0k/pLnSQDuAYHwDuCVQi6XkjCtdpk=;
Received: from mail-am6eur05on2105.outbound.protection.outlook.com
 ([40.107.22.105] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rarT4-0006qK-4E for tipc-discussion@lists.sourceforge.net;
 Fri, 16 Feb 2024 06:13:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RTo5a7edmnNV39vktc/iqfwT5tYgbfhFCFItqSij4em4m9zPv2kxgNSVaE2+c0+NddgAR9dXZBDm9ZdlrijQV9ONPo3YCC5Db8u7FkiBl/JDqONipNSwuh5NW18RNoSzwoX6gv6RRd74LEiCrLTZ8XQo7YQ556/jvH4xxWrPdBW7iUtZZOx8zOvBrY9RrG0Yq4AjVK/hSlmaVKykOIz+Ap498B3720ZMfH4an1jlpzBdhQ55D45pY/JC95R5kuKDejuP+q9xrkEhwVLvz/BTNPeFy40Z7/db58ClEOcpC/9dTSXqVJ3EKb63Kbo8W9xDf+4qkRSj9B6u2e9skTzwSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8TeEIoOUuqJV9rg3w3sd9du6n8y/9uqSJTO8EngyO1E=;
 b=PfA2FGgZizjeD/8mBU/FE8IrsrtPioMy9kYwWVhFyq3f6w/qt8DU+JNgESZdmWnEOK1VsxmaJOT1vME/KgKUx3io8jvD2FXXrbAohvG/OhY99KE1T+X3x5Jch7JXbGtHsAmVwi3DLI/oN8r3MKZYoR/PmMnfSu+H49UIsmqj0a3zatngHItlGXuZEx2FN4dS6T9eOO56vzozhIfJ2V4E/M6758pJ5MM0qqpayUpopZJ52xvSMxl81miYG9cgsatKDkupxviCgIwOqLipW8JiZG2dPZqo0h0iElw2s2NdkPpCgHdxGsx527Gh26mJsiUZna1CpH1FPg7ptf8PHmaKnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8TeEIoOUuqJV9rg3w3sd9du6n8y/9uqSJTO8EngyO1E=;
 b=MSXGXMptUJ+Tqg0GdJ06GWh4TPME+nawmwroWmTthqwmCEq8wPiCS6uMbLCdLjfhKqK6AESuIM8+5y3mfwL1EjamG5ePhxfZtVVhJHD6TazuU4anRLg6U3J1FOx/Cq72A+uppa8a/0mLVlf9FdyW8r4GSsohoJ6d5QB64t82k6H6+oYN30bDqx/12qGLqGoUhJdpSIXwjSWeGq4mQ4SGYfd6K24tWP1edwM5oR/8AtUqP9LzxQ9unA7/eiQdOAiRg67DWjxqfijWjo2EgRrDQLgrgzILsnuwd+c/LucLtda5I2JRmVsUwBxod32xzfouOH/N5DsgKLKl3OlEGpQZuA==
Received: from AS4PR05MB9647.eurprd05.prod.outlook.com (2603:10a6:20b:4ce::15)
 by VI1PR05MB6910.eurprd05.prod.outlook.com (2603:10a6:800:18a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 06:12:48 +0000
Received: from AS4PR05MB9647.eurprd05.prod.outlook.com
 ([fe80::209f:43fa:8733:2ca1]) by AS4PR05MB9647.eurprd05.prod.outlook.com
 ([fe80::209f:43fa:8733:2ca1%3]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 06:12:48 +0000
To: prakash bisht <ps13.bisht@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] TIPC socket alive even when the process is
 killed ( using SIGKILL)
Thread-Index: AQHaYB64qXl0JLKq0kim3TTDSJH2b7EMfCew
Date: Fri, 16 Feb 2024 06:12:47 +0000
Message-ID: <AS4PR05MB96472076DC2C248EF4B52194884C2@AS4PR05MB9647.eurprd05.prod.outlook.com>
References: <CACB1WsTUt2zgubKHtrFpu9ak3D4ukN6nhxGcQAMfFO+6bn1Z-w@mail.gmail.com>
In-Reply-To: <CACB1WsTUt2zgubKHtrFpu9ak3D4ukN6nhxGcQAMfFO+6bn1Z-w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS4PR05MB9647:EE_|VI1PR05MB6910:EE_
x-ms-office365-filtering-correlation-id: b5c6d5ed-1d1a-437c-df69-08dc2eb64c64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aunwMikw+qVw+Irct6S0UtklSnfDJThIhLQsiTUDvb9P14xXftCz/8KQpJ++4/RuVTVSXv7BSOWZBcQ3GGzJUEV3V5Ug9GjbfwWO/DVa1/qKQUOm5e7+YiSnwfChxUCswHoFcX0tCKL7dHVY1+grUpW9EgFa03y8diJcF5TQl5X3EaeqyOjfEfuDgj5F9bpn8pBMDxml27Mie+XKP5Vx00LZaZWdd9jbMTb9OEMpBZJli17/zVAZyfJFZ5XEDZ+a/3zZEtFiOKIM2Q8BFCACOvF5aDX4gJm1GR119LseVP7oarVSE0WzP8/DUGHNnqlJPIXOJimC9Eoj6g1qZKcCkxphIqlMZ8oYE5qlBopYDjqvU/LYBCvtIYPTM47crPGcncP4pChlU8uIAX0AYgyoRfnjpvjImUcL8ZfNpo4xBqhuWgMGXBp/DaYI8Qaic0kjRId4+mqZ9iaGknN7HProfF3fm1ndwZJ5ipjhz9TecOgXD/M9BbRKtubYlJ9ilpwQ2D2T3BnywldSIP9BkRV8mcti1tz8xrBK8QJg0TIEi23zE7UzlHHpISEwo649pAiqjjiF3LNlYBrvLUe685yR5ivWuzRXmyj4ieDjwiLjK94QwvAMAN5MR7X9aNutVbL+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS4PR05MB9647.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(396003)(39840400004)(136003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(2906002)(5660300002)(55016003)(4744005)(26005)(41300700001)(8676002)(8936002)(9686003)(76116006)(66946007)(66556008)(66476007)(66446008)(316002)(52536014)(64756008)(83380400001)(38070700009)(33656002)(7696005)(478600001)(71200400001)(110136005)(6506007)(38100700002)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SktCalRLcWZ6anFFUysvU1RwM3dOeDF5V2NxSitsMTh0TE9Zb2xPcXdYN2U1?=
 =?utf-8?B?Tk9YUFpyOGJtVTlkdmJJalFmQ1ByRjZZbE1nNWoybExyU1hDWUpzVjRxSC9x?=
 =?utf-8?B?UDNEdk5IcnJIS1R5UWczRloxdTJNMTBxcTJxVjJzNmwxdUpTaE9SU2o2RGNu?=
 =?utf-8?B?NnN4dGhYREZEeGNRc1k3YXlDbmg4TEVsakJ6cDhYa1NWclB1VmhLM1dURkxV?=
 =?utf-8?B?ejNSbEEweWtXZ2w4N21UZ0tjTUYyZlFoQWNSVm1hV3hHTGNSWFRlUmxiVVFK?=
 =?utf-8?B?dXRoK3JIdGJSSnVPa0M1R29qc0t0bUNDNHZhZmF2YVdQKzZORUMvMmhvK1Rq?=
 =?utf-8?B?T1Q4K1daU0FSUkFFblpQcTZoK0NYNzhoVzVYaEJ5Rk1qN0lyWGQxQzRKVTNj?=
 =?utf-8?B?UnI5NloxaHU2a0xyb1V4TXVibElkNzRqQVNPSnBlUUtTTmdKRnp2Zjh4Ri90?=
 =?utf-8?B?cjlRbTk0VzEwWHBCN2JMTHhBY0pFT3pPcWJaREJNbFN1UGZmMEFueVI3Q2tj?=
 =?utf-8?B?dDlKZG5KK3hmR2gzUEZjbWc4ZUFYLzhZWDNsWjZiaEtjYnZKQkxkTDhCT3ZG?=
 =?utf-8?B?bm9NZGhoQ056akdSTFJMek1nRzlEL3YySUtkMkcvNVE5Z0s0MUZFV1V5TUV2?=
 =?utf-8?B?TmxZdDh2NUxHQ3N3U0dpakhueFltZVFybVRleC9jVnBwTWM4cTZPTjFxNHVQ?=
 =?utf-8?B?aVUvMnJPK3ZLQS9LV1REc1NhWkFnNUREU0hKcTdpS3R1SHFobk9ZVnVCcWVx?=
 =?utf-8?B?Z1JOS053Y250ZjlhNlhKTU51MU12NEpwZUR5dE9aWHlCeWc5RzZpUlNkRW1v?=
 =?utf-8?B?bHFDblFmdnY0dU16eVlHellFd3VwbHFOM3hMK3QrbFFQcjFWdVlxYUxQMkcr?=
 =?utf-8?B?R3ZwMVBNTjJFUTZHU2RoY2JZR0x2YzVJbDVzTmY4aHNyalVib21mTFZINmI0?=
 =?utf-8?B?a2dLTnlXQlNGTGZTOGlDOEVock0zNWJCaVFqQ2dHTFpGMzFvR0kzSlNHZ3pE?=
 =?utf-8?B?OThSVHdBU0NDQ0RhRUluSHRRMG9Ya1pOVW5IK3VCTmw1U1pYYjJ3VTUycG5R?=
 =?utf-8?B?S2VBS3lTNUJ6OGdKRHN5czZESlJZekJSZk1rd1N6L0dOTE9HREFTNWNJZDha?=
 =?utf-8?B?NTd6TUVrOVV2Sy9LR2JyaitlMmJwV0lnT2xNdjBUcitsNlI4bGRyOFR0aUxY?=
 =?utf-8?B?ejlJTml5SmR3QjZ0L3R1b1VQUmNvZnhmMEVXdGlBdlF3UnJrR1dtcTJrUXFt?=
 =?utf-8?B?MG9Fb3B1aHRnQnV5ditLbDkyM2RZaDY4OTlGRkNjU2trZ3J4UjBuenBDb2hZ?=
 =?utf-8?B?UE1PampSajkvZ0djTkNraVFLTkhGRVpmQkV4bUN1Zm81d1NrcEFESlZmeEhj?=
 =?utf-8?B?bkNETFpsVzZHV3RZMFJlNjFUbkoxWGN3YTZjeHR3bFY1dlVNM3piNkViRUVu?=
 =?utf-8?B?ajREaGthTmduQkRBMXlicE1vRHhUQ0tDWkJFSkxyMHN3N21PRXAwTmw0T0NH?=
 =?utf-8?B?QUpaYXhxV0oreWl1R3R0S3Q3OHpsZVFtTVI0VUs2ek5CMXRtMTZCcURiWTlj?=
 =?utf-8?B?UTcyUk5ac1FaSWZTWkZ1SmlIL1NnTEovNXhtMXBBMGIyQzZCNEFFQVEvcXRw?=
 =?utf-8?B?QVpRdHl4M2JKTmVaRUhPNGhKeW9VclBzS0h6R3BiQk1lSlZrdjN5QXZxRE9n?=
 =?utf-8?B?L24xeGg4V1czS0ZxM0tkMUhWMUYvTCtMYmpZTG13ME9VbEVkWUoyajZWOXZ0?=
 =?utf-8?B?M0ZEb1o0SVRGZy9tK3oreXE2VjVtZHhVYnZJMlloNm81RTdTRk0xKzdSRnZ2?=
 =?utf-8?B?QkxTZzdLZGx0Wk01dno3MVVBQ3dyT2QzeGNKNlQxM0taK2FDNTltRXJIOVNj?=
 =?utf-8?B?cS90NEJGWEQwOGVBQXRuM0dmUGUwSndXN1gvN21XcGtHWlkzNVR4ZGhCdTZv?=
 =?utf-8?B?STlNbExBaTdZd0c2elFOdlRIdkR5QjVRNFJCUXppSHoyZnJsUGgrSU5wMUtY?=
 =?utf-8?B?UTNVZFJpdjFWd25DVGhWdHFLd2tmaU9wTDk3VEZ2YXkwOTFieHN5WVJWeTlU?=
 =?utf-8?B?dGlQNlFwNjdxYmNsVTk5ZmJhSFl6SnBYVkhablNnbjNENFVEalVaZ1JhK20z?=
 =?utf-8?Q?SiVyZlXp6dC7KoRGf6jDB0bpB?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4PR05MB9647.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5c6d5ed-1d1a-437c-df69-08dc2eb64c64
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2024 06:12:47.9950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dGDzpuacUp8inCQfGSJvXl6J8SQLKUiFNsX3C6p0+2RMjn7MZABt71vr0SHHwwcEGscRykQJ77MrcaF6n4WKR2vY7k5pMHp9UdVoEI4WvSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6910
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  >As part of the shutdown, we are terminating all the processes
    using SIGKILL. We are expecting the tipc sockets to be closed >automatically
    by the kernel after some time. > >But sometimes ‘tipc sock [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.22.105 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.22.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rarT4-0006qK-4E
Subject: Re: [tipc-discussion] TIPC socket alive even when the process is
 killed ( using SIGKILL)
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

PkFzIHBhcnQgb2YgdGhlIHNodXRkb3duLCB3ZSBhcmUgdGVybWluYXRpbmcgYWxsIHRoZSBwcm9j
ZXNzZXMgdXNpbmcgU0lHS0lMTC4gV2UgYXJlIGV4cGVjdGluZyB0aGUgdGlwYyBzb2NrZXRzIHRv
IGJlIGNsb3NlZA0KPmF1dG9tYXRpY2FsbHkgYnkgdGhlIGtlcm5lbCBhZnRlciBzb21lIHRpbWUu
DQo+DQo+QnV0IHNvbWV0aW1lcyDigJh0aXBjIHNvY2tldCBsaXN04oCZIGlzIHN0aWxsIHNob3dp
bmcgYSBmZXcgc29ja2V0cyBhcyBhbGl2ZS4NCj4NCj5Ob3cgd2hlbiB3ZSByZXN0YXJ0IHRoZSBh
cHBsaWNhdGlvbiwgdGhlIHN5c3RlbSBoYXMgdHdvIHNvY2tldHMgd2l0aCB0aGUgc2FtZSB0aXBj
IGFkZHJlc3MuDQo+DQpEaWQgeW91ciBjaGVjayBHYXJ5IER1emFuJ3MgY29tbWVudCA/DQoiICAg
SWYgdGhlIHByb2dyYW0gaXMgZm9ya2luZyBvZmYgcHJvY2Vzc2VzLCBwZXJoYXBzIHRoZSBjaGls
ZCBwcm9jZXNzZXMgYXJlbid0IGNsb3NpbmcgdGhlIHNvY2tldCBmaWxlIGRlc2NyaXB0b3IuIFVz
aW5nIGZjbnRsKCkgdG8gc2V0IEZEX0NMT0VYRUMgb24gdGhlIGRlc2NyaXB0b3IgaW4gdGhlIHBh
cmVudCBtYXkgaGVscC4iDQoNCkFub3RoZXIgdGhpbmcgaXMgeW91IG5lZWQgdG8gbWFrZSBzdXJl
IHRoYXQgeW91ciBwcm9jZXNzZXMgYXJlIGFjdHVhbGx5IGtpbGxlZCAobm90IGh1bmcgb3IgYmVj
b21lIHpvbWJpZSkuDQo+DQo+SXNuJ3QgdGhlIHRpcGMgc29ja2V0cyBzaG91bGQgaGF2ZSBiZWVu
IGNsb3NlZCBhdXRvbWF0aWNhbGx5IGJ5IHRoZSBrZXJuZWwgb25jZSB0aGUgYXBwbGljYXRpb24g
aXMga2lsbGVkID8NCj4NClRoZXkgYXJlIGNsb3NlZCBpZiBhcHBsaWNhdGlvbiBpcyBhY3R1YWxs
eSBraWxsZWQuDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdGlwYy1kaXNjdXNzaW9uCg==
