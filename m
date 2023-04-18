Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1936E5682
	for <lists+tipc-discussion@lfdr.de>; Tue, 18 Apr 2023 03:35:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1poaFV-0001Oa-1g;
	Tue, 18 Apr 2023 01:35:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1poaFS-0001OU-2c
 for tipc-discussion@lists.sourceforge.net;
 Tue, 18 Apr 2023 01:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QAtvqDbThBbUkgrbedKwjqwE6r692gUsTeTX3DzOhOQ=; b=Xbhd0EhMEAvdUopOelpQoUNeeH
 M60E7c6e1f4GqdZhM9gQ8GnVosVfRAzB8fOa7On7rKwIAxyYvm4c1db5sdHfaV5RIflf43PiwIwcs
 c0yg1zAudbsoKBvqzeg61M+bBUX6W9tljiImc9oOYdcm093HU8366AqvIoUcnXCRX3ig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QAtvqDbThBbUkgrbedKwjqwE6r692gUsTeTX3DzOhOQ=; b=athM64Hs/sLqbOu/Uaw5XfOHd/
 VuNerFVjnIB02j2o71n+v1b/1AilY/PROxed3UqnWlHyQtRY1W8xHGMLf+B90KWXI53pdtBAY7Nm+
 ti4UjEZ+PNIYEo0IZwXgnDyEnKgIwqW78AaNzhhsWrCRttqCK1P6/JMafuhuOB08xuUI=;
Received: from mail-db8eur05on2125.outbound.protection.outlook.com
 ([40.107.20.125] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1poaFH-00B13e-2O for tipc-discussion@lists.sourceforge.net;
 Tue, 18 Apr 2023 01:35:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JK9jdJ6XuZH18HKJHP50FdikcQzZ6CmBiZHhuV9a/WeS3eJwS8aAQDEzDjEd59gejcSXz3TSjrMUywMY1JSqXIWaOmseW2qHcAt7HeyLbkY0FtqAmAGrGbFM2QgT4xtLd/eLNibUtL1XuoG8qomP9QTxQp+ZScw9QmBRdcsoBymFIWEU9fxz14Lyg0NgDL8TFRMRHX0GUJjNeUE0PvX7d4Vo1L0utpJ4+Zldve2uSD7NNAz0fk3vLWL6/QnmtYerN8k5d6t/lQVQVHdhpvh2nVS/ToLvepIRM23E1/PdnQMvDCOl83q3SGAXgts++VZdnhKUp3nlmMc/++fVH8sXJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QAtvqDbThBbUkgrbedKwjqwE6r692gUsTeTX3DzOhOQ=;
 b=dtzAgjvipbjT0HX9xQZ1FA2Z6m0NnbOkLofLUSsNToGpltQNUsBKH7mfMYZy6pXM6riDwYGzpAtMSD+LZVqK69xhoXSeQPd36uuWDtYYYMrcTZ4qq35BSaToICh0EDL+6go1R/nvNl9Vd4yaS5mLJCC90SESc/Jcq8Ht3+6n8Mms5bhI87meCnKcv3AFbjM368ir6Kl6RZTseFv/tNGMUmpq5g8dA4C/bYSDSDXuB3PCyNhKwpOc099+AL3qk/0SS3fFkFFZiasTxixmv6+tFJYQ6CCe1MbF4uBzRWI4K0EGBAi6yuMdflAPCWwnSqG2f8Hkq6LM6kjb7+nfF3K1jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QAtvqDbThBbUkgrbedKwjqwE6r692gUsTeTX3DzOhOQ=;
 b=MsPXHi40n/RDyUI78odJkCc/6GxOyKftdZDpMkViyY9d+iXABCkDZZfyVhof+wQDt1NZETzgRAmXj5NOg+qUwOHTD6a4H+5bTIEPvcYtGcde389c19KGOolMQH7ggD9gQpLAhm5UTLkJRnC06uQFa4TVoBJ/sCqYQhd/srkdwBE=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by PAVPR05MB10379.eurprd05.prod.outlook.com (2603:10a6:102:2fa::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 01:34:50 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25%6]) with mapi id 15.20.6298.028; Tue, 18 Apr 2023
 01:34:49 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: prakash bisht <ps13.bisht@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Xin Long <lxin@redhat.com>,
 "jmaloy@redhat.com" <jmaloy@redhat.com>
Thread-Topic: TIPC socket ( SOCK_SEQPACKET) cleanup issue
Thread-Index: AQHZcOPYr6IF6SM3Rkeef9sYmpdpDq8wRmkA
Date: Tue, 18 Apr 2023 01:34:49 +0000
Message-ID: <DB9PR05MB9078720FB4FED1290AE929FC889D9@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <CACB1WsRUCkb6ZfNZ1fCQ=q_M6Zo0t-MuXouoxKWwgReRNCn9QQ@mail.gmail.com>
 <CACB1WsQswDHuvQrpHu_F=G6SM7MAZJ1RU=XAkOBgnw95KquM9g@mail.gmail.com>
In-Reply-To: <CACB1WsQswDHuvQrpHu_F=G6SM7MAZJ1RU=XAkOBgnw95KquM9g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|PAVPR05MB10379:EE_
x-ms-office365-filtering-correlation-id: e8b5a5cf-ef36-4911-fd31-08db3fad19d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7/nRJI59zjlkemr7UJSg9S+B6IpTcWGKbdGoI6tGNB5V8iQtw9abpZqAG7vz8oQ9vkMwRFkSzwICR4tHCnODv6FCi30HnxaYAGS7FOAwZ9T3CLo3pWkU7oqxM7liI3HtoyEISISaTnRfCQS+B/xGTcEuA2aPs9v4vb0JqgRL2i6dmhEfYS4eZ3YAJqhutUdD3sCZ5nFl6u645X6RxKC+t0IP5g1tJVTW5bR8u1IGObCh4w1vKm1o9oBtFdsbBHt+aw+u4vADo1M1q3I3bv08vKD2YNLRyG17AZQKsWrextSJYuzjc39aYCZBXAglb6wHwB6MSjdnlUgYI37OOzaYby2JnDIe5ZzaM/EldSUr8nzpYLT8/Iiiav4Ev/YugUF07VofxAyMK+RLdUaYF4sEqzlMSdRsjRwzrYNLy+s185dL05fC3Jcwmnt1NzZ8ecX9xukQEAa1/8voqXn+87BrkA/JmmcTrvRE2AJGaElbddP79A+5eDhd33EDTNtToqsG3nAilQrkWrk7DcaXtTu3fJwYoBDBzHCLIX8SW32l0EFF00l+l5PwxS0rSR1HpB3W6bq92tdhTuftVGjppniE1ifljd7CnMTgRhMYVaLsDkks8WuMsZMaZdKYBlgWd3Re
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(136003)(346002)(39850400004)(396003)(451199021)(64756008)(478600001)(71200400001)(38100700002)(8936002)(8676002)(316002)(41300700001)(66476007)(55016003)(66946007)(66446008)(76116006)(66556008)(122000001)(110136005)(186003)(2906002)(53546011)(38070700005)(9686003)(6506007)(26005)(86362001)(83380400001)(33656002)(5660300002)(52536014)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2dhQmhqWkswV21zN2p0eW9rMzNwNWNJU0VCb1YxVHllMUU0UUptS0RXeVVM?=
 =?utf-8?B?WGZSTCtpNmNaNU5ZODJVdHBiUmg4TWsyaTc3WUV6MjB5N1U2Q3krNDRlK1RN?=
 =?utf-8?B?Rm96T1diUWhISHlLNUg3bndjRFF3bzg2VEF6UnZmUlhZWGNCWldSb2tqM1R0?=
 =?utf-8?B?VWNOUHRMdGk0amlHdEtKOVVPcjI0SUZZQjZCbTVQSHh4VVk0ODMrMUpNTlc4?=
 =?utf-8?B?NzJ1UHh1K0p2eXU3amxHeTFHYVh2N2MrWFdleTI4UWJMbEQ0dU82cXJXRlJ0?=
 =?utf-8?B?WWlkZXBBNW8zZ2JWNzNLTGNmYzk4MnBEVi9qUFNMVndXc2tRYTdINndPSlhU?=
 =?utf-8?B?a2o3SVJ4Z0tPUnV1alg5OFFhN3lieS9EcjlrVWh1bithUXRCVnNTcktaN0ow?=
 =?utf-8?B?TDgvdVpjdldEQjVJY0xTU2dHTExWZ2RFMjQrREUzOWNhZFAwTng0UDc4eE5L?=
 =?utf-8?B?N2RtR3lIektoekQ3VGJaTjVLNnorMzE3Q0FDWXgvTTNDZ29BbkdGY0wvblRM?=
 =?utf-8?B?OU8yV2k5MmNYaHpDTk9BRjhlV1BTUWVhU0JjcGNjeUt2ZVdOWlloL25sbFFS?=
 =?utf-8?B?ZkJtWkg5d0FpN1poWTZhd0QvUEp3VTAyZ2ZLWlVsOVFMVUtPdjdWbC9JajVX?=
 =?utf-8?B?S0NPcFhscDUzS0hRZzVLdWgrQ1lJM3JaaGdRaW5BQlkyNnlVMUdMWTZnQUdv?=
 =?utf-8?B?djNQUVN5OVEzTHVDbHE0UklRSXBudFJlT0hYUWZaZWNJOU5sRDdaSDkvL2lX?=
 =?utf-8?B?bzBVRC9CcEdnNi9ReFUvdERpUk15K3NyUTBkUGcwWE9qUzJWc21PeWV3cmlQ?=
 =?utf-8?B?UG9kMTlwSWhtbzJDelhQWktzTW8xSlY5UkZGRnp3NzNId1BONllMYWdicFVt?=
 =?utf-8?B?dW54WjFENkh1K0dDMGVPOGlwZkdQRDQzUXRyUWVQZXlmV3A4QlhFU0ZkbENT?=
 =?utf-8?B?Q0NjL1VSK1hDbWd2NzE2ZUdyeVlMQW16MEptcHhZOUsxK3lkQlRoUElaeGlo?=
 =?utf-8?B?cjNPNWRuMXoyWkdQb1Jzc3IrTXBsTlczb1BNOVBmNjVGcTRIcGduMnN3ejVM?=
 =?utf-8?B?VEg5cnAzbGJWbkJyQStvOUhxUjJDSGFyWTVYK0t4OG1hU1BjM0tGY0RCb2xG?=
 =?utf-8?B?ek9POFU4TWd1RE1FNkF3Y0djRDdiK3dVMlkvVU8vYld0dkZGVkkyNDcxd0tK?=
 =?utf-8?B?aFJOYUp0T1RYMUNrL3dndGZXbnRGNy9oRCtpSHFBdHNlRURmWGw5dElRbHhY?=
 =?utf-8?B?RDZJTGdyRHBHelpTSnJYeDErclZ0bGh6ME93R0xnODZLTWltT1RVcVNDVmZV?=
 =?utf-8?B?amhWcUVYZnFmK0pqT1IrakJkdGtRaStCdzFOTFoyRm9Xc1ZsUkkyVmVISms1?=
 =?utf-8?B?bDEyS2laRjJmUzhsanBnMFB1KzM0eEpPRHFndnp2cUl4amZHcGwrZzJwUzB6?=
 =?utf-8?B?dDU4VkJrTThqZUdQVTZjUzlXRjU4UGxGemloSGhEbDFNLzByc3ZXQUFpcHFo?=
 =?utf-8?B?Umt1UmxkVVFEa2FwK2ZIaHVTaFRUTG5nbkhlZHJPV0FDWElwcHcvcUhXc2kr?=
 =?utf-8?B?cXZLcy82OUo2TmlvQ1JWUDNQYWJqNldGNlhTM0pMN01tSXd3Nm90eHQ3a0x2?=
 =?utf-8?B?YlNZSHo0UUF0emY5b09sK1dKdngxcDlITHBNWUJvekNXdW44YWI2OWFWSWFD?=
 =?utf-8?B?bXBvY1hMNUR6OXNvN0lzMlhiWWE5RlUvTjZSYlpIcVJHbTd5WWJPbGlkYWx6?=
 =?utf-8?B?YXpoMjh6R2swMWt3ZXdOTk9pVm1IWjNBM1dXOHJhUnRPSUNBTnZsbmNrZU1t?=
 =?utf-8?B?V1hQRFFIM1kxalZxWEVNVFpUR21lNHMxQkJyenF0VmRGNklLL2k2VkUxRGxR?=
 =?utf-8?B?QnVuSjkrQzJFVlNIZndsd2lxM2ZEN2ZpeEVuMUNvK0g1ZHNCWGRoNW9jRFVu?=
 =?utf-8?B?YUx4N2dHUG5DVCtsL2hpbHo5YXZOaGJoS1hFdkJrOXBnSlNIcm8zYnB2bFJL?=
 =?utf-8?B?QjJXY2FrZXJPK25aYlNHZ2ovalJWNzR4bVBnc2Y2MzF1Tytvc1FRNVYzejVv?=
 =?utf-8?B?MllCOTlnd1VWd2VQaTk5OFJsRXBsdjJLNzJMT3gxeXpCbk5yWGNCMnhzTGtF?=
 =?utf-8?B?WE9IbTJTZnZFanpRUzI2RlIrVFdJalhMY2FqZGpWbUVyaUFka3ZRdzVMeW5a?=
 =?utf-8?B?K2c9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8b5a5cf-ef36-4911-fd31-08db3fad19d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 01:34:49.8281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wxXRYDEbiuk1xb0y0oblG9PVX/qZRCzkDkvUFSVHoOgXvj7JZZ4M88BSgjBHbFSOYwNMDKOJzfAOfdpgTTX+oB6VHzxkGMXQTPPmtKYPuBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR05MB10379
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: prakash bisht <ps13.bisht@gmail.com> Sent: Monday,
 April
 17, 2023 11:20 AM To: tipc-discussion@lists.sourceforge.net;
 Xin Long <lxin@redhat.com>; 
 Tung Quang Nguyen <tung.q.nguyen@dektech.com.au> [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.125 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.125 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1poaFH-00B13e-2O
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC socket ( SOCK_SEQPACKET) cleanup issue
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

DQoNCkZyb206IHByYWthc2ggYmlzaHQgPHBzMTMuYmlzaHRAZ21haWwuY29tPg0KU2VudDogTW9u
ZGF5LCBBcHJpbCAxNywgMjAyMyAxMToyMCBBTQ0KVG86IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQ7IFhpbiBMb25nIDxseGluQHJlZGhhdC5jb20+OyBUdW5nIFF1YW5nIE5n
dXllbiA8dHVuZy5xLm5ndXllbkBkZWt0ZWNoLmNvbS5hdT47IGptYWxveUByZWRoYXQuY29tDQpT
dWJqZWN0OiBGd2Q6IFRJUEMgc29ja2V0ICggU09DS19TRVFQQUNLRVQpIGNsZWFudXAgaXNzdWUN
Cg0KSGkgSm9obi9YaW4sVHVuZywNCg0KQW55IHRob3VnaHRzIG9uIG15IHByZXZpb3VzIGVtYWls
PyBXZSBhcmUgdXNpbmcgdGlwYyBmb3Igb3VyIHByb2R1Y3QgZm9yIHF1aXRlIGEgd2hpbGUgYW5k
IHN0YXJ0ZWQgZmFjaW5nIHRoaXMgaXNzdWUgcmVjZW50bHkgaW4gYSBzcGVjaWZpYyBzY2VuYXJp
byB3ZSBsYXVuY2ggc3RyYWNlIHRvIG1vbml0b3IgYW5vdGhlciBwcm9jZXNzLg0KQWxzbyBpcyB0
aGVyZSBhbnkgd2F5IHRvIGRlbnkgY3JlYXRpb24gb2YgYW5vdGhlciB0aXBjIHNvY2tldCB3aXRo
IHRoZSBzYW1lIHRpcGMgYWRkcmVzcyA/ICBJbiBvdXIgY2FzZSBhcHBsaWNhdGlvbnMgbmVlZCBh
IHVuaXF1ZSB0aXBjIHNlcnZlciBzb2NrZXQuDQo+Pj4gVGhlcmUgaXMgbm8gbGltaXRhdGlvbiBm
b3IgY3JlYXRpbmcgbWFueSBzb2NrZXRzIGJpbmRpbmcgdG8gdGhlIHNhbWUgdGlwYyBhZGRyZXNz
LiBXaHkgeW91IG5lZWQg4oCcYSB1bmlxdWUgdGlwYyBzZXJ2ZXIgc29ja2V04oCdID8gQ2FuIHlv
dSBwcm92aWRlIHlvdXIgY29kZSB0byBkZW1vbnN0cmF0ZSB5b3VyIHVzZSBjYXNlID8NCg0KVGhh
bmtzIGFuZCBSZWdhcmRzLA0KUHJha2FzaA0KLS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAt
LS0tLS0tLS0NCkZyb206IHByYWthc2ggYmlzaHQgPHBzMTMuYmlzaHRAZ21haWwuY29tPG1haWx0
bzpwczEzLmJpc2h0QGdtYWlsLmNvbT4+DQpEYXRlOiBNb24sIEFwciAzLCAyMDIzIGF0IDQ6MzPi
gK9QTQ0KU3ViamVjdDogVElQQyBzb2NrZXQgKCBTT0NLX1NFUVBBQ0tFVCkgY2xlYW51cCBpc3N1
ZQ0KVG86IDx0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0PG1haWx0bzp0aXBj
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Pj4NCg0KSGkgYWxsLA0KDQpJIGFtIGZh
Y2luZyBhbiBpc3N1ZSB3aGlsZSBjbG9zaW5nIHRoZSBUSVBDIHNlcnZlciBzb2NrZXQuIEluIGNl
cnRhaW4gc2NlbmFyaW9zLCBldmVuIGFmdGVyIGNsb3NpbmcgdGhlIHNlcnZlciBzb2NrZXQgZmQg
dGhlIOKAmHRpcGMgc29ja2V0IGxpc3TigJkgaXMgc3RpbGwgc2hvd2luZyBpdCBhcyBhbGl2ZS4N
Cj4+PiBXaGF0IGlzIHlvdSBpcHJvdXRlMiB2ZXJzaW9uID8gQ2FuIHlvdSBwcm92aWRlIHlvdXIg
Y29kZSB0byBkZW1vbnN0cmF0ZSB5b3VyIHVzZSBjYXNlID8NCkkgYW0gc3VyZSB0aGF0IHRoZSBm
ZCBoYXMgYmVlbiBjbG9zZWQgYXMgdGhlIG5leHQgc29ja2V0IGNyZWF0aW9uIHJlcXVlc3QgZ2V0
cyB0aGUgc2FtZSBmZCBmcm9tIGxpbnV4LiBFdmVuIHdoZW4gdGhlIHByb2Nlc3MgZXhpdHMsIHRo
ZSBzdGFsZSBzb2NrZXQgZW50cnkgaXMgc3RpbGwgcHJlc2VudCBpbiB0aGUg4oCYdGlwYyBzb2Nr
ZXQgbGlzdOKAmSBhbmQgaXQgdmFuaXNoZXMgb25seSBhZnRlciByZWJvb3RpbmcgdGhlIHN5c3Rl
bS4NCiBLZXJuZWwgdmVyc2lvbiA6IDQuMTkuODENClNvY2tldCB0eXBlIDogICAgICBTT0NLX1NF
UVBBQ0tFVA0KDQpBbHNvLCBpcyB0aGVyZSBhbnkgd2F5IG9mIGZpbmRpbmcgb3V0IHdoZXRoZXIg
YSB0aXBjIHNvY2tldCBiZWxvbmdzIHRvIHdoaWNoIGxpbnV4IHByb2Nlc3MgPw0KPj4+IFRoZXJl
IGlzIG5vIGNvbW1hbmQgdG8ga25vdyB3aGljaCB0aXBjIHNvY2tldCBiZWxvbmdzIHRvIHdoaWNo
IExpbnV4IHByb2Nlc3MuIEJ1dCB5b3UgY2FuIHVzZSBmdW5jdGlvbiBnZXRzb2NrbmFtZSgpIHRv
IHByaW50IG91dCB0aGUgcG9ydCBpZCBhZnRlciBjcmVhdGluZyBhIHNvY2tldC4gVGhlbiB5b3Ug
a25vdyB0aGUgY3JlYXRlZCBzb2NrZXQgYmVsb25ncyB0byB0aGUgY2FsbGluZyBwcm9jZXNzLg0K
DQpXb3VsZCBhcHByZWNpYXRlIGFueSBoZWxwLg0KDQpUaGFua3MsDQpQcmFrYXNoDQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
