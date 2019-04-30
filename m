Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7289CFCED
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Apr 2019 17:32:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hLUjX-00059J-ON; Tue, 30 Apr 2019 15:31:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hLUjW-00059C-If
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Apr 2019 15:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I2Um/7Q9fY0+p47i0hcE2ZJW/37qQDNqJqaxY5LvVXk=; b=OipxJVfv20Wq/+UFAimAaTXoBS
 gAEv3Iyn+isXYDh3IgiWMNCdUWnJ1ZJul3CPxyaZ9lXl/5M8AMGE6g/jldBv1cT+i5GCfU6aYP5ul
 SwlWBcvautgdiBfSdsJ6Vp05jNp8HaOjCwnVHYmBuy896/Fz70sLm5Q5Ey7c6tIr1BGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I2Um/7Q9fY0+p47i0hcE2ZJW/37qQDNqJqaxY5LvVXk=; b=jmJMG4WU3e5adiuDP6tMowgYAH
 3x2dhb5dwtEGERz459a1pcAZY5UILIpHcGY7/BetnNkop9hwr1IAG4/hmpRKG79BcGRAjKu7NsIuV
 RUGyUpeLfMmjMfkD2SJF4dK0YCgF7oxaw1tpUOCcRdKjxZPZ0h6vyyHI8+BLsLhppm/c=;
Received: from mail-eopbgr820059.outbound.protection.outlook.com
 ([40.107.82.59] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hLUjN-001CMp-IL
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Apr 2019 15:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I2Um/7Q9fY0+p47i0hcE2ZJW/37qQDNqJqaxY5LvVXk=;
 b=VuJCL7ELCpzo4970Xti6s8hPQfv5NRRPamA2lML0cotNQdVoBmx1J55eBsT90M3AwN/0vRpk8HJuD8VLq1Z8RF1AiKyl0+Shm/c9HiTD+P5ji1TXrTtQvKTTzxChUKdBV+/xEePy5CPsD4PcyhAcMgqrWqa3crc+7pAKaprq608=
Received: from BL0PR1501MB2003.namprd15.prod.outlook.com (52.132.21.33) by
 BL0PR1501MB2082.namprd15.prod.outlook.com (52.132.21.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 30 Apr 2019 14:59:19 +0000
Received: from BL0PR1501MB2003.namprd15.prod.outlook.com
 ([fe80::4118:92c7:9580:a42e]) by BL0PR1501MB2003.namprd15.prod.outlook.com
 ([fe80::4118:92c7:9580:a42e%2]) with mapi id 15.20.1835.015; Tue, 30 Apr 2019
 14:59:19 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Ivan Serdyuk <local.tourist.kiev@gmail.com>
Thread-Topic: Using TIPC protocol for ZeroMQ bindings, in Clojure CLR
Thread-Index: AQHU/gD1W58QLqQzskWa5VTNvv4S8KZUzVEA
Date: Tue, 30 Apr 2019 14:59:19 +0000
Message-ID: <BL0PR1501MB20030CBC5E13AE5F9C6602B99A3A0@BL0PR1501MB2003.namprd15.prod.outlook.com>
References: <CANFCsz-NYjrSc1CVJ+xJm_sVB1K+tDrL-fuFpr568Y-DgtcKxA@mail.gmail.com>
In-Reply-To: <CANFCsz-NYjrSc1CVJ+xJm_sVB1K+tDrL-fuFpr568Y-DgtcKxA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd0047da-97ca-4e63-fd91-08d6cd7c6c4f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR1501MB2082; 
x-ms-traffictypediagnostic: BL0PR1501MB2082:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <BL0PR1501MB2082E15DE7D10E0F5DE1DD549A3A0@BL0PR1501MB2082.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(136003)(396003)(39860400002)(376002)(189003)(199004)(86362001)(33656002)(102836004)(26005)(316002)(99286004)(7696005)(9326002)(256004)(97736004)(2906002)(54906003)(186003)(966005)(6916009)(14454004)(476003)(446003)(3846002)(486006)(44832011)(790700001)(11346002)(74316002)(7736002)(6116002)(76176011)(53546011)(6506007)(54896002)(6306002)(478600001)(55016002)(229853002)(6436002)(8676002)(6246003)(81166006)(81156014)(71190400001)(53936002)(71200400001)(76116006)(66946007)(73956011)(66476007)(66556008)(64756008)(66446008)(52536014)(8936002)(68736007)(66066001)(25786009)(9686003)(4326008)(606006)(236005)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR1501MB2082;
 H:BL0PR1501MB2003.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dajNzUnVrffYIQSmhp3v4REqDWrozMZnEyakQWE0exQQeMVLBBn6f2GV/Twa8efQNl8MkeK6uwoMUU8OPYVBl7t0bAnOC+Nu3sCnnp+28hVvKpAmp0PWxrTJh7e3zLKU3LtgfcLarZer2MFdHmB88Rf8FcCQY3N/oZ0v54lHb/5RrZQbWFS1FgZZxIbpwmeselUDj6U545zOEqgd8w/Bo/RpQt5LyMHHvVWhU3bBuRIzvb/OOAFEMIop+uRpwfwBL4vjCu5GW7QwIhc+tMhbWGY5c1K9BU+0RcojQhRN2QJBVywZhn9CifN/S0jmmSbjiyLVLD/tCAf2UF4TuuwD/lH/6BQCtFH3gjJDJWlqmySuzVE9OG46924kV6b3I6+vpPDzboJL75ROjuJ8vGqojD2q3wVKmKz/w50L+2u7IJw=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd0047da-97ca-4e63-fd91-08d6cd7c6c4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 14:59:19.4492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR1501MB2082
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.59 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: landley.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hLUjN-001CMp-IL
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Using TIPC protocol for ZeroMQ bindings,
 in Clojure CLR
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgSXZhbiwNCkFzYSBtYXR0ZXIgb2YgZmFjdCwgVElQQyBpcyBhbHJlYWR5IHN1cHBvcnRlZCBi
eSBaZXJvTVEuIFRoaXMgd2FzIGRvbmUgYnkgRXJpayBIdWduZSB3aGVuIGhlIHdhcyB3b3JraW5n
IGF0IEVyaWNzc29uIGEgZmV3IHllYXJzIGJhY2suDQpBcyBJIHVuZGVyc3RhbmQgaXQsIHRoZSBz
dXBwb3J0IGlzIHNvbWV3aGF0IGxpbWl0ZWQsIGFuZCBkb2VzIG5vdCBjb21wcmlzZSBhbGwgZmVh
dHVyZSBvZiBUSVBDLCBidXQgSSBkb27igJl0IGtub3cgdGhlIGRldGFpbHMuDQpJIGNjIEVyaWss
IGFuZCB0cnVzdCBoZSBjYW4gZ2l2ZSB5b3UgIG1vcmUgcmVsZXZhbnQgaW5mb3JtYXRpb24gcmVn
YXJkaW5nIHRoaXMsDQoNCkJSDQovLy9qb24NCg0KDQpGcm9tOiBJdmFuIFNlcmR5dWsgPGxvY2Fs
LnRvdXJpc3Qua2lldkBnbWFpbC5jb20+DQpTZW50OiAyOC1BcHItMTkgMTY6MjgNClRvOiBKb24g
TWFsb3kgPGpvbi5tYWxveUBlcmljc3Nvbi5jb20+DQpTdWJqZWN0OiBVc2luZyBUSVBDIHByb3Rv
Y29sIGZvciBaZXJvTVEgYmluZGluZ3MsIGluIENsb2p1cmUgQ0xSDQoNCkpvbiwgY2FuIHlvdSBh
c3Npc3QgKGFuZCBmaW5kIGFueSBtb3RpdmF0ZWQgY29sbGVnZXMsIGF0IEVyaWNzc29uIGFuZC9v
ciAzcmQgcGFydHkgZW5kLXVzZXIgY29tcGFueSkgd2l0aCBpbXBsZW1lbnRpbmcgc3VwcG9ydCBm
b3IgdGhlIHByb3RvY29sIGZvciB0aGUgWmVyb01RIGJpbmRpbmc/DQoNCllvdSBoYXZlIGJlZW4g
bWVudGlvbmVkIGhlcmUgaHR0cHM6Ly93d3cubGFuZGxleS5uZXQva2RvY3Mvb2xzLzIwMDQvb2xz
MjAwNHYyLXBhZ2VzLTYxLTcwLnBkZjxodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3VybD9r
PTMzMTYyY2I3LTZmOWQyN2E4LTMzMTY2YzJjLTg2MDc0YzgwNTIxYy05YTExYTgzY2FlMjFmNjRh
JnU9aHR0cHM6Ly93d3cubGFuZGxleS5uZXQva2RvY3Mvb2xzLzIwMDQvb2xzMjAwNHYyLXBhZ2Vz
LTYxLTcwLnBkZj4gLSBzbyBJIHRob3VnaHQgdGhhdCBJIHNob3VsZCBwaW5nIHRoZSBvcmlnaW5h
bCBhdXRob3JzIG9mIHRoZSBzcGVjIGFuZCB0aGUgaW1wbGVtZW50YXRpb25zLiBJIGFtIHVuc3Vy
ZSB3aGF0IHdhcyB0aGUgYmFja2dyb3VuZCBmb3IgdGhlIFplcm9NUSBwcm9qZWN0LiBPbmx5IGxl
YXN0IG9mIHRoZSBiaW5kaW5ncyBhcmUgc3VwcG9ydGVkICh0aGVyZSBhcmUgdmFyaW91cyBvbmVz
LCBmb3IgdmFyaW91cyBwcm9ncmFtbWluZyBsYW5ndWFnZXMpIGFuZCB0aGV5IGFyZSBtb3N0bHkg
Y292ZXJpbmcgVENQIG9yIElQQyB0cmFuc3BvcnRzLg0KDQpodHRwczovL2dpdGh1Yi5jb20vY2xv
anVyZS9jbG9qdXJlLWNscjxodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3VybD9rPWY2Njkx
NWE4LWFhZTIxZWI3LWY2Njk1NTMzLTg2MDc0YzgwNTIxYy0zN2QzODM0MmE1ZDVkMmM0JnU9aHR0
cHM6Ly9naXRodWIuY29tL2Nsb2p1cmUvY2xvanVyZS1jbHI+ICAtIHRoZSBjb21waWxlciBpcyBi
YXNlZCBvbiB0aGUgRExSLiBJdCBpcyBvbmUgb2YgdHdvIGxhbmd1YWdlIGltcGxlbWVudGF0aW9u
cyAodGhlIG90aGVyIG9uZSBpcyBJcm9uUHl0aG9uKSB3aGljaCBlbmZvcmNlIGFuIGltcHJvdmVt
ZW50IG9mIHRoZSBzY3JpcHRpbmcgbGFuZ3VhZ2UgcnVudGltZSwgZm9yIHRoZSBDTFIuIEV2ZW4g
UG93ZXJzaGVsbCBpcyBkb2VzIG5vdCByZWx5IG9uIHRoZSBibGVlZGluZyBlZGdlIHZlcnNpb24u
IEN1cnJlbnRseSBsb29raW5nIGZvcndhcmQgdG8gbW92ZSB0byAuTkVUIENvcmUgMy4wIGFuZCB3
b3JrIG9uIHRoZSBNb25vJ3MgdmVjdG9yLiBEYXZpZCBNaWxsZXIgaXMgdGhlIGFyY2hpdGVjdC4N
Cg0KU28gdG8gbWFrZSB0aGUgbGFuZ3VhZ2UgdXNhYmxlIGZvciB2YXJpb3VzIGRldmVsb3BlcnMg
YW5kIGNvbW1lcmNpYWwgZG9tYWlucyB3ZSByZXF1aXJlIGEgZ29vZCBlY29zeXN0ZW0gd2l0aCBs
aWJzIGFuZCBmcmFtZXdvcmtzLiBQbHVzIHRoZXJlIGFyZSB2YXJpb3VzIGRlc2lnbiBhcHByb2Fj
aGVzL2FyY2hpdGVjdHVyZXMgbGlrZSBtb25vbGl0aCwgbWljcm8tc2VydmljZXMgYW5kIHNlcnZl
cmxlc3MuIFNvIGZvciBpbnRlZ3JhdGluZyBtb25vbGl0aCwgaW50ZXJhY3Rpb24gYmV0d2VlbiBt
aWNyby1zZXJ2aWNlcyAoYW5kIGh5YnJpZCBpbnRlZ3JhdGlvbnMsIG9mIHNvbWUga2luZCwgdmlh
IHNvbWUgbWlkZGxld2FyZSkgLSB3ZSB3b3VsZCByZXF1aXJlIFplcm9NUS4gSW4gdGhlIHNhbWUg
dGltZSAtIGl0IGlzIHRoZSBvbmx5IGxvdy1sYXRlbmN5IG9wdGlvbiBmb3IgaW50ZXJhY3Rpb24g
b2YgdmlydHVhbGl6ZWQgYXBwcyBhbmQvb3Igc2VydmljZXMgKHdoZXRoZXIgdGhhdCBpcyBhIHBy
b2Nlc3MgbGV2ZWwgdmlydC4vY29udGFpbmVycyBvciBPUyBsZXZlbCB2aXJ0LikuIFNvIHRoYXQg
d291bGQgYWxsb3cgdG8gaW1wcm92ZSB0aGUgY29tcGlsZXIgb2YgdGhlIHByb2dyYW1taW5nIGxh
bmd1YWdlIGl0c2VsZiBhbmQgZGVmaW5lIGEgcm9hZG1hcCwgc28gdGhlIHByb2plY3Qgd291bGQg
aGF2ZSBmdXR1cmUuDQoNCkl2YW4NCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
