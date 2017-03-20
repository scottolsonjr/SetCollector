﻿
local L = LibStub("AceLocale-3.0"):NewLocale("SetCollector", "koKR")
if not L then return end

L["ADDON_NAME"] = "Set Collector"
L["ALLIANCE"] = "얼라이언스"
L["ASPIRANT"] = "지원자"
L["BINDING_TOGGLE_UI"] = "Set Collector를 전환합니다."
L["BLACK"] = "검정"
L["BLUE"] = "파랑"
L["BROWN"] = "갈색"
L["CHAR_DB_UPGRADED"] = "캐릭터 자료가 갱신되었습니다."
L["CLOTH"] = "천"
L["COMBATANT"] = "전투원"
L["DB_UPGRADED"] = "자료가 갱신되었습니다."
L["DG_CLOTH_03"] = "마나 깃든 예복"
L["DG_LEATHER_03"] = "거친 황야 의복"
L["DG_MAIL_03"] = "황량함의 방어구"
L["DG_PLATE_03"] = "파멸의 판금 갑옷"
L["DK_CD_90"] = "리치 군주 세트"
L["DK_PVP_16"] = "[W1] 야성적인 (모독의 검투사 방어구)"
L["DK_PVP_MELEE_14"] = "[14] 고통을 부르는 (모독의 검투사 방어구)"
L["DK_PVP_MELEE_15"] = "[15] 자부심 가득한 (모독의 검투사 방어구)"
L["DK_TR_17"] = "[17] 오우거해골 뼈판금 전투장비"
L["DK_TR_18"] = "[18] 악마눈길 방어구"
L["DK_TR_MELEE_07"] = "[7] 스컬지 전투장비"
L["DK_TR_MELEE_08"] = "[8] 암흑룬새김 전투장비"
L["DK_TR_MELEE_10"] = "[10] 스컬지군주 전투장비"
L["DK_TR_MELEE_11"] = "[11] 용암도금 전투장비"
L["DK_TR_MELEE_12"] = "[12] 엘레멘티움 죽음판금 전투장비"
L["DK_TR_MELEE_13"] = "[13] 죽음의 뼈판금 전투장비"
L["DK_TR_MELEE_14"] = "[14] 잃어버린 지하묘지의 전투장비"
L["DK_TR_MELEE_15"] = "[15] 걸신들린 아귀의 전투판금 장비"
L["DK_TR_MELEE_16"] = "[16] 거대 공포의 전투판금 장비"
L["DK_TR_MELEE_A_09"] = "[9] 타사리안의 전투장비"
L["DK_TR_MELEE_H_09"] = "[9] 콜티라의 전투장비"
L["DK_TR_TANK_07"] = "[7] 스컬지 판금장비"
L["DK_TR_TANK_08"] = "[8] 암흑룬새김 판금장비"
L["DK_TR_TANK_10"] = "[10] 스컬지군주 판금장비"
L["DK_TR_TANK_11"] = "[11] 용암도금 전투갑옷"
L["DK_TR_TANK_12"] = "[12] 엘레멘티움 죽음판금 전투갑옷"
L["DK_TR_TANK_13"] = "[13] 죽음의 뼈판금 갑옷"
L["DK_TR_TANK_14"] = "[14] 잃어버린 지하묘지의 판금장비"
L["DK_TR_TANK_15"] = "[15] 걸신들린 아귀의 판금장비"
L["DK_TR_TANK_16"] = "[16] 거대 공포의 판금장비"
L["DK_TR_TANK_A_09"] = "[9] 타사리안의 판금장비"
L["DK_TR_TANK_H_09"] = "[9] 콜티라의 판금장비"
L["DR_CD_90"] = "주기 세트"
L["DR_DG_01"] = "D1: 자연의정수 의복"
L["DR_DG_02"] = "D2: 야생의정수 의복"
L["DR_DG_03"] = "D3: 달숲 의복"
L["DR_DG_AQ_1"] = "영원한 삶의 의복"
L["DR_DG_AQ_2"] = "태초의 의복"
L["DR_PVP_16"] = "[W1] 야성적인 (성역의 검투사 의복)"
L["DR_PVP_CASTER_14"] = "[14] 고통을 부르는 (야생의 검투사 방어구)"
L["DR_PVP_CASTER_15"] = "[15] 자부심 가득한 (야생의 검투사 방어구)"
L["DR_PVP_HEALER_14"] = "[14] 고통을 부르는 (위안의 검투사 의복)"
L["DR_PVP_HEALER_15"] = "[15] 자부심 가득한 (위안의 검투사 의복)"
L["DR_PVP_MELEE_14"] = "[14] 고통을 부르는 (성역의 검투사 의복)"
L["DR_PVP_MELEE_15"] = "[15] 자부심 가득한 (성역의 검투사 의복)"
L["DR_TR_01"] = "[1] 세나리온 의복"
L["DR_TR_02"] = "[2] 성난폭풍 의복"
L["DR_TR_03"] = "[3] 꿈나그네 의복"
L["DR_TR_17"] = "[17] 생명의 숲 전투장비"
L["DR_TR_18"] = "[18] 다짐발톱 전쟁의복"
L["DR_TR_CASTER_04"] = "[4] 말로른의 의복"
L["DR_TR_CASTER_05"] = "[5] 놀드랏실 의복"
L["DR_TR_CASTER_06"] = "[6] 천둥심장 의복"
L["DR_TR_CASTER_07"] = "[7] 꿈나그네 제복"
L["DR_TR_CASTER_08"] = "[8] 별빛노래 제복"
L["DR_TR_CASTER_10"] = "[10] 덩굴손매듭 의복"
L["DR_TR_CASTER_11"] = "[11] 폭풍기수 의복"
L["DR_TR_CASTER_12"] = "[12] 흑요석 푸르름매듭 의복"
L["DR_TR_CASTER_13"] = "[13] 검은 대지의 의복"
L["DR_TR_CASTER_14"] = "[14] 영원꽃의 의복"
L["DR_TR_CASTER_15"] = "[15] 유령숲의 의복"
L["DR_TR_CASTER_16"] = "[16] 으스러진 골짜기의 의복"
L["DR_TR_CASTER_A_09"] = "[9] 말퓨리온의 의복"
L["DR_TR_CASTER_H_09"] = "[9] 룬토템의 의복"
L["DR_TR_HEALER_04"] = "[4] 말로른의 예복"
L["DR_TR_HEALER_05"] = "[5] 놀드랏실 예복"
L["DR_TR_HEALER_06"] = "[6] 천둥심장 예복"
L["DR_TR_HEALER_07"] = "[7] 꿈나그네 의복"
L["DR_TR_HEALER_08"] = "[8] 별빛노래 의복"
L["DR_TR_HEALER_10"] = "[10] 덩굴손매듭 제복"
L["DR_TR_HEALER_11"] = "[11] 폭풍기수 예복"
L["DR_TR_HEALER_12"] = "[12] 흑요석 푸르름매듭 예복"
L["DR_TR_HEALER_13"] = "[13] 검은 대지의 예복"
L["DR_TR_HEALER_14"] = "[14] 영원꽃의 예복"
L["DR_TR_HEALER_15"] = "[15] 유령숲의 예복"
L["DR_TR_HEALER_16"] = "[16] 으스러진 골짜기의 예복"
L["DR_TR_HEALER_A_09"] = "[9] 말퓨리온의 제복"
L["DR_TR_HEALER_H_09"] = "[9] 룬토템의 제복"
L["DR_TR_MELEE_04"] = "[4] 말로른의 갑옷"
L["DR_TR_MELEE_05"] = "[5] 놀드랏실 갑옷"
L["DR_TR_MELEE_06"] = "[6] 천둥심장 갑옷"
L["DR_TR_MELEE_07"] = "[7] 꿈나그네 전투장비"
L["DR_TR_MELEE_08"] = "[8] 별빛노래 전투장비"
L["DR_TR_MELEE_10"] = "[10] 덩굴손매듭 전투장비"
L["DR_TR_MELEE_11"] = "[11] 폭풍기수 전투제복"
L["DR_TR_MELEE_12"] = "[12] 흑요석 푸르름매듭 전투제복"
L["DR_TR_MELEE_13"] = "[13] 검은 대지의 전투제복"
L["DR_TR_MELEE_14"] = "[14] 영원꽃의 전투장비"
L["DR_TR_MELEE_15"] = "[15] 유령숲의 전투장비"
L["DR_TR_MELEE_16"] = "[16] 으스러진 골짜기의 전투장비"
L["DR_TR_MELEE_A_09"] = "[9] 말퓨리온의 전투장비"
L["DR_TR_MELEE_H_09"] = "[9] 룬토템의 전투장비"
L["DR_TR_TANK_14"] = "[14] 영원꽃의 갑옷"
L["DR_TR_TANK_15"] = "[15] 유령숲의 방어구"
L["DR_TR_TANK_16"] = "[16] 으스러진 골짜기의 방어구"
L["ELITE"] = "정예"
L["FINE"] = "Fine"
L["GA_ALLIANCE_SET"] = "스톰윈드 근위병 장비세트"
L["GA_BWM_SET_100"] = "전쟁준비실/드워프 참호 장비세트"
L["GA_HORDE_SET"] = "오그리마 경비병 장비세트"
L["GARRISON"] = "주둔지"
L["GLADIATOR"] = "검투사"
L["GREEN"] = "녹색"
L["HIDE_DETAIL"] = "Hide Detail"
L["HO_BREWFEST_DRESS"] = "가을 축제 예복 (드레스)"
L["HO_BREWFEST_REGALIA"] = "가을 축제 예복 (의복)"
L["HO_DINNER_SUIT"] = "정찬복"
L["HO_ELEGANT_DRESS"] = "우아한 드레스"
L["HO_FESTIVE_DRESS"] = "축제 드레스"
L["HO_FESTIVE_SUIT"] = "축제 의상"
L["HO_HALLOWED_HELM"] = "할로윈 투구 (성스러운 보호모)"
L["HO_HORSEMANS_HOOD"] = "저주받은 기사의 끔찍한 보호모"
L["HO_HORSEMANS_SLICER"] = "저주받은 기사의 사악한 절단검"
L["HO_LOVELY_DRESS"] = "아름다운 드레스"
L["HO_MIDSUMMER_REVELER"] = "한여름 축제 구경꾼 의상"
L["HO_PILGRIMS_ATTIRE"] = "순례자 의복"
L["HO_PILGRIMS_DRESS"] = "순례자 드레스"
L["HO_TUXEDO"] = "턱시도"
L["HO_WINTER_GARB"] = "겨울 예복"
L["HOLIDAY"] = "이벤트"
L["HORDE"] = "호드"
L["HU_CD_90"] = "울부짖는 야수 세트"
L["HU_DG_01"] = "D1: 야수추적자 갑옷"
L["HU_DG_02"] = "D2: 야수왕의 갑옷"
L["HU_DG_03"] = "D3: 야수제왕의 갑옷"
L["HU_DG_AQ_1"] = "드러나지 않은 길의 전투장비"
L["HU_DG_AQ_2"] = "관통의 갑옷"
L["HU_PVP_16"] = "[W1] 야성적인 (추적의 검투사 장비)"
L["HU_PVP_RANGED_14"] = "[14] 고통을 부르는 (추적의 검투사 장비)"
L["HU_PVP_RANGED_15"] = "[15] 자부심 가득한 (추적의 검투사 장비)"
L["HU_TR_01"] = "[1] 거인추적자 갑옷"
L["HU_TR_02"] = "[2] 용추적자 갑옷"
L["HU_TR_03"] = "[3] 지하추적자 갑옷"
L["HU_TR_17"] = "[17] 라일라크 추적자의 전투장비"
L["HU_TR_18"] = "[18] 야만스러운 사냥의 전투장비"
L["HU_TR_RANGED_04"] = "[4] 악마추적자의 갑옷"
L["HU_TR_RANGED_05"] = "[5] 균열추적자 갑옷"
L["HU_TR_RANGED_06"] = "[6] 그론추적자 갑옷"
L["HU_TR_RANGED_07"] = "[7] 지하추적자 전투장비"
L["HU_TR_RANGED_08"] = "[8] 스컬지추적자 전투장비"
L["HU_TR_RANGED_10"] = "[10] 안카하르 피사냥꾼 전투장비"
L["HU_TR_RANGED_11"] = "[11] 번개충전 전투장비"
L["HU_TR_RANGED_12"] = "[12] 불꽃꼬리의 전투장비"
L["HU_TR_RANGED_13"] = "[13] 고룡추적자 전투장비"
L["HU_TR_RANGED_14"] = "[14] 야운골 학살자의 전투장비"
L["HU_TR_RANGED_15"] = "[15] 사우록 추적자의 전투장비"
L["HU_TR_RANGED_16"] = "[16] 멈추지 않는 경계의 전투장비"
L["HU_TR_RANGED_A_09"] = "[9] 윈드러너의 전투장비"
L["HU_TR_RANGED_H_09"] = "[9] 윈드러너의 추격장비"
L["ITEMLINK_ERROR"] = "아이템의 정보가 캐쉬에 없거나 아이템의 정보가 잘못되었습니다. 재시도 해주세요."
L["ITEMS_COLLECTED"] = "%d/%d"
L["L100"] = "100"
L["L90"] = "90"
L["LEATHER"] = "가죽"
L["LG_60"] = "설퍼라스 - 라그나로스의 손"
L["LG_80"] = "어둠한"
L["LG_85"] = "용의 분노 - 타렉고사의 안식"
L["LG_CASTER_INT_100"] = "에테랄루스 - 영원한 보은"
L["LG_CASTER_INT_90"] = "싱호 - 위론의 숨결"
L["LG_HEALER_80"] = "발아니르 - 고대 왕의 망치"
L["LG_HEALER_INT_100"] = "니스라무스 - 모두를 보는 자"
L["LG_HEALER_INT_90"] = "지나캉 - 츠지의 호의"
L["LG_MELEE_70"] = "아지노스의 쌍날검"
L["LG_MELEE_AGI_100"] = "말루스 - 피를 마시는 자"
L["LG_MELEE_AGI_90"] = "펀위 - 쉬엔의 분노"
L["LG_MELEE_STR_100"] = "토라수스 - 드레노어의 바위 심장"
L["LG_MELEE_STR_90"] = "공루 - 쉬엔의 힘"
L["LG_RANGED_70"] = "소리달 - 별 분노"
L["LG_ROGUE_85"] = "아버지의 송곳니"
L["LG_TANK_100"] = "상투스 - 깨지지 않는 자의 인장"
L["LG_TANK_AGI_90"] = "치엔러 - 니우짜오의 용기"
L["LG_TANK_STR_90"] = "치엔잉 - 니우짜오의 인내"
L["MA_CD_90"] = "삼원소 세트"
L["MA_DG_01"] = "D1: 원소술사 의복"
L["MA_DG_02"] = "D2: 마술사의 의복"
L["MA_DG_03"] = "D3: 주문술사 의복"
L["MA_DG_AQ_1"] = "밝혀진 비밀의 의복"
L["MA_DG_AQ_2"] = "불가사의의 의복"
L["MA_PVP_16"] = "[W1] 야성적인 (비전의 검투사 의복)"
L["MA_PVP_CASTER_14"] = "[14] 고통을 부르는 (비전의 검투사 의복)"
L["MA_PVP_CASTER_15"] = "[15] 자부심 가득한 (비전의 검투사 의복)"
L["MA_TR_01"] = "[1] 신비술사 의복"
L["MA_TR_02"] = "[2] 소용돌이 의복"
L["MA_TR_03"] = "[3] 얼음불꽃 의복"
L["MA_TR_17"] = "[17] 비전파쇄자 의복"
L["MA_TR_18"] = "[18] 비전 비밀결사의 예복"
L["MA_TR_CASTER_04"] = "[4] 알도르 의복"
L["MA_TR_CASTER_05"] = "[5] 티리스팔 의복"
L["MA_TR_CASTER_06"] = "[6] 폭풍우 의복"
L["MA_TR_CASTER_07"] = "[7] 얼음불꽃 의복"
L["MA_TR_CASTER_08"] = "[8] 키린 토 제복"
L["MA_TR_CASTER_10"] = "[10] 혈법사 의복"
L["MA_TR_CASTER_11"] = "[11] 불의 군주 예복"
L["MA_TR_CASTER_12"] = "[12] 용암천지의 불꽃매 로브"
L["MA_TR_CASTER_13"] = "[13] 시간 군주의 의복"
L["MA_TR_CASTER_14"] = "[14] 불타는 두루마리의 의복"
L["MA_TR_CASTER_15"] = "[15] 오색 히드라의 의복"
L["MA_TR_CASTER_16"] = "[16] 시간술사의 의복"
L["MA_TR_CASTER_A_09"] = "[9] 카드가의 의복"
L["MA_TR_CASTER_H_09"] = "[9] 선스트라이더의 의복"
L["MAIL"] = "사슬"
L["MINIMAP_TOOLTIP"] = "클릭하여 장비세트를 확인합니다."
L["MISSING_LOCALIZATION"] = "한글화 오류. 버그를 제보해주세요."
L["MO_CD_90"] = "위풍당당한 군주 세트"
L["MO_PVP_16"] = "[W1] 야성적인 (검투사의 무쇠가죽)"
L["MO_PVP_HEALER_14"] = "[14] 고통을 부르는 (검투사의 구리가죽)"
L["MO_PVP_HEALER_15"] = "[15] 자부심 가득한 (검투사의 구리가죽)"
L["MO_PVP_MELEE_14"] = "[14] 고통을 부르는 (검투사의 무쇠가죽)"
L["MO_PVP_MELEE_15"] = "[15] 자부심 가득한 (검투사의 무쇠가죽)"
L["MO_TR_17"] = "[17] 검은 시전의 전투장비"
L["MO_TR_18"] = "[18] 태풍의 눈 전투복"
L["MO_TR_HEALER_14"] = "[14] 주학의 예복"
L["MO_TR_HEALER_15"] = "[15] 불부적 예복"
L["MO_TR_HEALER_16"] = "[16] 신성한 일곱 인장의 예복"
L["MO_TR_MELEE_14"] = "[14] 주학의 전투장비"
L["MO_TR_MELEE_15"] = "[15] 불부적 전투장비"
L["MO_TR_MELEE_16"] = "[16] 신성한 일곱 인장의 전투장비"
L["MO_TR_TANK_14"] = "[14] 주학의 갑옷"
L["MO_TR_TANK_15"] = "[15] 불부적 방어구"
L["MO_TR_TANK_16"] = "[16] 신성한 일곱 인장의 방어구"
L["NOOBTAIN"] = "이 장비세트는 형상변환이 불가능합니다."
L["NOT_AVAILABLE"] = "이 명령어는 사용할 수 없습니다."
L["NOTRANSMOG"] = "형상변환이 안되는 것만"
L["OBTAIN_FILTER"] = "획득 가능한 것만 표시"
L["ORIGINAL"] = "원본"
L["OT_ELR_100"] = "에레다르 군주의 의복"
L["PA_CD_90"] = "성전사 세트"
L["PA_DG_01"] = "D1: 성전사 방어구"
L["PA_DG_02"] = "D2: 성령의 갑옷"
L["PA_DG_03"] = "D3: 정의의 방어구"
L["PA_DG_AQ_1"] = "영원한 정의의 전투장비"
L["PA_DG_AQ_2"] = "응징의 전투장비"
L["PA_PVP_16"] = "[W1] 야성적인 (비호의 검투사 방어구)"
L["PA_PVP_HEALER_14"] = "[14] 고통을 부르는 (구원의 검투사 방어구)"
L["PA_PVP_HEALER_15"] = "[15] 자부심 가득한 (구원의 검투사 방어구)"
L["PA_PVP_MELEE_14"] = "[14] 고통을 부르는 (비호의 검투사 방어구)"
L["PA_PVP_MELEE_15"] = "[15] 자부심 가득한 (비호의 검투사 방어구)"
L["PA_TR_01"] = "[1] 집행의 방어구"
L["PA_TR_02"] = "[2] 심판의 갑옷"
L["PA_TR_03"] = "[3] 구원의 갑옷"
L["PA_TR_17"] = "[17] 인도하는 빛의 전투장비"
L["PA_TR_18"] = "[18] 부단한 경계의 시선"
L["PA_TR_HEALER_04"] = "[4] 심판관의 예복"
L["PA_TR_HEALER_05"] = "[5] 수정철로 예복"
L["PA_TR_HEALER_06"] = "[6] 빛의 수호자 예복"
L["PA_TR_HEALER_07"] = "[7] 구원의 의복"
L["PA_TR_HEALER_08"] = "[8] 비호 의복"
L["PA_TR_HEALER_10"] = "[10] 서약의 빛 제복"
L["PA_TR_HEALER_11"] = "[11] 강화된 사피리움 의복"
L["PA_TR_HEALER_12"] = "[12] 제물의 의복"
L["PA_TR_HEALER_13"] = "[13] 찬란하게 빛나는 영광의 의복"
L["PA_TR_HEALER_14"] = "[14] 백호 예복"
L["PA_TR_HEALER_15"] = "[15] 번개 황제의 예복"
L["PA_TR_HEALER_16"] = "[16] 날개 달린 승리의 예복"
L["PA_TR_HEALER_A_09"] = "[9] 투랄리온의 제복"
L["PA_TR_HEALER_H_09"] = "[9] 리아드린의 제복"
L["PA_TR_MELEE_04"] = "[4] 심판관의 전투장비"
L["PA_TR_MELEE_05"] = "[5] 수정철로 전투장비"
L["PA_TR_MELEE_06"] = "[6] 빛의 수호자 전투장비"
L["PA_TR_MELEE_07"] = "[7] 구원의 전투장비"
L["PA_TR_MELEE_08"] = "[8] 비호 전투장비"
L["PA_TR_MELEE_10"] = "[10] 서약의 빛 전투장비"
L["PA_TR_MELEE_11"] = "[11] 강화된 사피리움 전투판금 장비"
L["PA_TR_MELEE_12"] = "[12] 제물의 전투판금 장비"
L["PA_TR_MELEE_13"] = "[13] 찬란하게 빛나는 영광의 전투판금 장비"
L["PA_TR_MELEE_14"] = "[14] 백호 전투장비"
L["PA_TR_MELEE_15"] = "[15] 번개 황제의 전투장비"
L["PA_TR_MELEE_16"] = "[16] 날개 달린 승리의 전투장비"
L["PA_TR_MELEE_A_09"] = "[9] 투랄리온의 전투장비"
L["PA_TR_MELEE_H_09"] = "[9] 리아드린의 전투장비"
L["PA_TR_TANK_04"] = "[4] 심판관의 갑옷"
L["PA_TR_TANK_05"] = "[5] 수정철로 갑옷"
L["PA_TR_TANK_06"] = "[6] 빛의 수호자 갑옷"
L["PA_TR_TANK_07"] = "[7] 구원의 판금장비"
L["PA_TR_TANK_08"] = "[8] 비호 판금장비"
L["PA_TR_TANK_10"] = "[10] 서약의 빛 판금장비"
L["PA_TR_TANK_11"] = "[11] 강화된 사피리움 전투갑옷"
L["PA_TR_TANK_12"] = "[12] 제물의 갑옷"
L["PA_TR_TANK_13"] = "[13] 찬란하게 빛나는 영광의 갑옷"
L["PA_TR_TANK_14"] = "[14] 백호 판금장비"
L["PA_TR_TANK_15"] = "[15] 번개 황제의 판금장비"
L["PA_TR_TANK_16"] = "[16]  날개 달린 승리의 판금장비"
L["PA_TR_TANK_A_09"] = "[9] 투랄리온의 판금장비"
L["PA_TR_TANK_H_09"] = "[9] 리아드린의 판금장비"
L["PINK"] = "분홍"
L["PLATE"] = "판금"
L["PR_CD_90"] = "빛 세트"
L["PR_DG_01"] = "D1: 기원의 의복"
L["PR_DG_02"] = "D2: 고결의 의복"
L["PR_DG_03"] = "D3: 신성의 예복"
L["PR_DG_AQ_1"] = "무한한 지혜의 의복"
L["PR_DG_AQ_2"] = "신탁의 예복"
L["PR_PVP_16"] = "[W1] 야성적인 (신탁의 검투사 예복)"
L["PR_PVP_CASTER_14"] = "[14] 고통을 부르는 (믿음의 검투사 예복)"
L["PR_PVP_CASTER_15"] = "[15] 자부심 가득한 (믿음의 검투사 예복)"
L["PR_PVP_HEALER_14"] = "[14] 고통을 부르는 (신탁의 검투사 예복)"
L["PR_PVP_HEALER_15"] = "[15] 자부심 가득한 (신탁의 검투사 예복)"
L["PR_TR_01"] = "[1] 계시의 의복"
L["PR_TR_02"] = "[2] 초월의 의복"
L["PR_TR_03"] = "[3] 신념의 의복"
L["PR_TR_17"] = "[17] 영혼사제의 예복"
L["PR_TR_18"] = "[18] 신앙의 의복"
L["PR_TR_CASTER_04"] = "[4] 현신의 의복"
L["PR_TR_CASTER_05"] = "[5] 화신의 의복"
L["PR_TR_CASTER_06"] = "[6] 면죄의 의복"
L["PR_TR_CASTER_07"] = "[7] 신념의 의복"
L["PR_TR_CASTER_08"] = "[8] 축성 의복"
L["PR_TR_CASTER_10"] = "[10] 진홍빛 수행사제 의복"
L["PR_TR_CASTER_11"] = "[11] 수은 의복"
L["PR_TR_CASTER_12"] = "[12] 정화하는 불꽃의 의복"
L["PR_TR_CASTER_13"] = "[13] 저무는 빛의 의복"
L["PR_TR_CASTER_14"] = "[14] 수호룡의 의복"
L["PR_TR_CASTER_15"] = "[15] 퇴마사의 의복"
L["PR_TR_CASTER_16"] = "[16] 세 영광의 의복"
L["PR_TR_CASTER_A_09"] = "[9] 벨렌의 의복"
L["PR_TR_CASTER_H_09"] = "[9] 자브라의 의복"
L["PR_TR_HEALER_04"] = "[4] 현신의 예복"
L["PR_TR_HEALER_05"] = "[5] 화신의 예복"
L["PR_TR_HEALER_06"] = "[6] 면죄의 의복"
L["PR_TR_HEALER_07"] = "[7] 신념의 제복"
L["PR_TR_HEALER_08"] = "[8] 축성 제복"
L["PR_TR_HEALER_10"] = "[10] 진홍빛 수행사제 예복"
L["PR_TR_HEALER_11"] = "[11] 수은 예복"
L["PR_TR_HEALER_12"] = "[12] 정화하는 불꽃의 예복"
L["PR_TR_HEALER_13"] = "[13] 저무는 빛의 예복"
L["PR_TR_HEALER_14"] = "[14] 수호룡의 예복"
L["PR_TR_HEALER_15"] = "[15] 퇴마사의 예복"
L["PR_TR_HEALER_16"] = "[16] 세 영광의 예복"
L["PR_TR_HEALER_A_09"] = "[9] 벨렌의 예복"
L["PR_TR_HEALER_H_09"] = "[9] 자브라의 예복"
L["PURPLE"] = "보라"
L["RAID"] = "공격대"
L["RED"] = "빨강"
L["REPLICA"] = "복제"
L["RIGHT_CLICK_FAVORITE"] = "오른쪽 클릭하여 즐겨찾기에 장비세트 추가"
L["RO_CD_90"] = "소리없는 자객 세트"
L["RO_DG_01"] = "D1: 어둠추적자 갑옷"
L["RO_DG_02"] = "D2: 검은장막의 방어구"
L["RO_DG_03"] = "D3: 암살의 제복"
L["RO_DG_AQ_1"] = "어두운 그림자의 상징"
L["RO_DG_AQ_2"] = "죽음의 선고자 전투장비"
L["RO_PVP_16"] = "[W1] 야성적인 (암살의 검투사 제복)"
L["RO_PVP_MELEE_14"] = "[14] 고통을 부르는 (암살의 검투사 제복)"
L["RO_PVP_MELEE_15"] = "[15] 자부심 가득한 (암살의 검투사 제복)"
L["RO_TR_01"] = "[1] 밤그림자 갑옷"
L["RO_TR_02"] = "[2] 붉은송곳니 방어구"
L["RO_TR_03"] = "[3] 해골사신의 갑옷"
L["RO_TR_17"] = "[17] 독살자의 전투장비"
L["RO_TR_18"] = "[18] 지옥칼날 방어구"
L["RO_TR_MELEE_04"] = "[4] 황천의 칼날"
L["RO_TR_MELEE_05"] = "[5] 죽음의 장막"
L["RO_TR_MELEE_06"] = "[6] 학살자의 제복"
L["RO_TR_MELEE_07"] = "[7] 해골사신 전투장비"
L["RO_TR_MELEE_08"] = "[8] 공포칼날 전투장비"
L["RO_TR_MELEE_10"] = "[10] 그림자칼날 전투장비"
L["RO_TR_MELEE_11"] = "[11] 바람 무도가 의복"
L["RO_TR_MELEE_12"] = "[12] 암흑 불사조의 예복"
L["RO_TR_MELEE_13"] = "[13] 검은송곳니 전투매듭"
L["RO_TR_MELEE_14"] = "[14] 천 개의 칼날 전투장비"
L["RO_TR_MELEE_15"] = "[15] 아홉 개의 꼬리 전투장비"
L["RO_TR_MELEE_16"] = "[16] 가시 돋친 암살자의 전투장비"
L["RO_TR_MELEE_A_09"] = "[9] 벤클리프의 전투장비"
L["RO_TR_MELEE_H_09"] = "[9] 가로나의 전투장비"
L["SH_CD_90"] = "질풍 세트"
L["SH_DG_01"] = "D1: 정령의 방어구"
L["SH_DG_02"] = "D2: 우레의 방어구"
L["SH_DG_03"] = "D3: 성난 파도의 방어구"
L["SH_DG_AQ_1"] = "휘몰아치는 폭풍의 선물"
L["SH_DG_AQ_2"] = "폭풍소환사의 의복"
L["SH_PVP_16"] = "[W1] 야성적인 (전세의 검투사 방어구)"
L["SH_PVP_CASTER_14"] = "[14] 고통을 부르는 (천둥주먹의 검투사 방어구)"
L["SH_PVP_CASTER_15"] = "[15] 자부심 가득한 (천둥주먹의 검투사 방어구)"
L["SH_PVP_HEALER_14"] = "[14] 고통을 부르는 (전세의 검투사 방어구)"
L["SH_PVP_HEALER_15"] = "[15] 자부심 가득한 (전세의 검투사 방어구)"
L["SH_PVP_MELEE_14"] = "[14] 고통을 부르는 (지각변동의 검투사 방어구)"
L["SH_PVP_MELEE_15"] = "[15] 자부심 가득한 (지각변동의 검투사 방어구)"
L["SH_TR_01"] = "[1] 지각변동의 방어구"
L["SH_TR_02"] = "[2] 폭풍우 방어구"
L["SH_TR_03"] = "[3] 지축이동의 갑옷"
L["SH_TR_17"] = "[17] 바람예언자의 의복"
L["SH_TR_18"] = "[18] 살아있는 산의 품"
L["SH_TR_CASTER_04"] = "[4] 회오리 의복"
L["SH_TR_CASTER_05"] = "[5] 대격변 의복"
L["SH_TR_CASTER_06"] = "[6] 무너지는 하늘의 의복"
L["SH_TR_CASTER_07"] = "[7] 지축이동의 제복"
L["SH_TR_CASTER_08"] = "[8] 세계파괴자 제복"
L["SH_TR_CASTER_10"] = "[10] 서리술사 제복"
L["SH_TR_CASTER_11"] = "[11] 분노한 정령 의복"
L["SH_TR_CASTER_12"] = "[12] 화산의 의복"
L["SH_TR_CASTER_13"] = "[13] 영혼나그네의 의복"
L["SH_TR_CASTER_14"] = "[14] 불새의 의복"
L["SH_TR_CASTER_15"] = "[15] 의술사의 의복"
L["SH_TR_CASTER_16"] = "[16] 천신의 조화 의복"
L["SH_TR_CASTER_A_09"] = "[9] 노분도의 제복"
L["SH_TR_CASTER_H_09"] = "[9] 스랄의 제복"
L["SH_TR_HEALER_04"] = "[4] 회오리 예복"
L["SH_TR_HEALER_05"] = "[5] 대격변 예복"
L["SH_TR_HEALER_06"] = "[6] 무너지는 하늘의 예복"
L["SH_TR_HEALER_07"] = "[7] 지축이동의 의복"
L["SH_TR_HEALER_08"] = "[8] 세계파괴자 의복"
L["SH_TR_HEALER_10"] = "[10] 서리술사 의복"
L["SH_TR_HEALER_11"] = "[11] 분노한 정령 예복"
L["SH_TR_HEALER_12"] = "[12] 화산의 예복"
L["SH_TR_HEALER_13"] = "[13] 영혼나그네의 예복"
L["SH_TR_HEALER_14"] = "[14] 불새의 예복"
L["SH_TR_HEALER_15"] = "[15] 의술사의 예복"
L["SH_TR_HEALER_16"] = "[16] 천신의 조화 예복"
L["SH_TR_HEALER_A_09"] = "[9] 노분도의 의복"
L["SH_TR_HEALER_H_09"] = "[9] 스랄의 의복"
L["SH_TR_MELEE_04"] = "[4] 회오리 갑옷"
L["SH_TR_MELEE_05"] = "[5] 대격변 갑옷"
L["SH_TR_MELEE_06"] = "[6] 무너지는 하늘의 갑옷"
L["SH_TR_MELEE_07"] = "[7] 지축이동의 전투장비"
L["SH_TR_MELEE_08"] = "[8] 세계파괴자 전투장비"
L["SH_TR_MELEE_10"] = "[10] 서리술사 전투장비"
L["SH_TR_MELEE_11"] = "[11] 분노한 정령 전투장비"
L["SH_TR_MELEE_12"] = "[12] 화산의 전투장비"
L["SH_TR_MELEE_13"] = "[13] 영혼나그네의 전투장비"
L["SH_TR_MELEE_14"] = "[14] 불새의 전투장비"
L["SH_TR_MELEE_15"] = "[15] 의술사의 전투장비"
L["SH_TR_MELEE_16"] = "[16] 천신의 조화 전투장비"
L["SH_TR_MELEE_A_09"] = "[9] 노분도의 전투장비"
L["SH_TR_MELEE_H_09"] = "[9] 스랄의 전투장비"
L["SHOW_DETAIL"] = "Show Detail"
L["SLASH_HELP"] = [=[사용 가능한 명령어: show, hide, resetdb, help.
예: /SetCollector show]=]
L["SLASH_HELP_BUTTON"] = [=[button Show : 미니맵 버튼 표시, button hide : 미니맵 버튼 숨김. 또는 공백으로 두면 버튼을 토글합니다.
예: /SetCollector button hide 또는 /SetCollector button]=]
L["SLASH_HELP_SORT"] = [=[기본 세트의 정렬 방식을 변경합니다. asc : 오름차순. desc : 내림차순.
예: /SetCollector sort asc]=]
L["TEAL"] = "청록"
L["TRANSMOG_FILTER"] = "형상변환이 가능한 것만"
L["TUTORIAL_1"] = "전문화에 따른 분류 및 선호하는 세트만 분류하여 볼 수 있습니다."
L["TUTORIAL_2"] = "사용가능한 장비세트가 여기에 목록으로 표시됩니다. 클릭하여 장비세트를 미리볼 수 있습니다. 별표시는 즐겨찾기, 체크 표시는 모두 모았다는 표시입니다."
L["TUTORIAL_3"] = "같은 장비세트에 여러 색상으로 분류된 경우 탭을 통하여 분류된 것으로 볼 수 있습니다."
L["TUTORIAL_4"] = "장비세트의 착용 모습을 미리볼 수 있습니다. 왼쪽의 목록을 클릭하여 착용 모습을 볼 수 있습니다."
L["VENDOR"] = "상점 세트"
L["VOID_STORAGE_NOT_READY"] = "공허보관사를 확인할 수 없습니다.. 공허보관사를 닫은 후 다시 열어주세요."
L["WK_CD_90"] = "배신자 세트"
L["WK_DG_01"] = "D1: 공포안개 의복"
L["WK_DG_02"] = "D2: 죽음의안개 의복"
L["WK_DG_03"] = "D3: 망각의 수의"
L["WK_DG_AQ_1"] = "절대자의 의복"
L["WK_DG_AQ_2"] = "파멸의 소환사"
L["WK_PVP_16"] = "[W1] 야성적인 (악마의 검투사 수의)"
L["WK_PVP_CASTER_14"] = "[14] 고통을 부르는 (악마의 검투사 수의)"
L["WK_PVP_CASTER_15"] = "[15] 자부심 가득한 (악마의 검투사 수의)"
L["WK_TR_01"] = "[1] 타락한심장의 의복"
L["WK_TR_02"] = "[2] 천벌의 의복"
L["WK_TR_03"] = "[3] 역병심장 의복"
L["WK_TR_17"] = "[17] 어둠의 의회 제복"
L["WK_TR_18"] = "[18] 단발마의 의복"
L["WK_TR_CASTER_04"] = "[4] 공허의 심장 의복"
L["WK_TR_CASTER_05"] = "[5] 타락자의 의복"
L["WK_TR_CASTER_06"] = "[6] 재앙의 의복"
L["WK_TR_CASTER_07"] = "[7] 역병심장 예복"
L["WK_TR_CASTER_08"] = "[8] 죽음인도자 제복"
L["WK_TR_CASTER_10"] = "[10] 어둠의 집회 의복"
L["WK_TR_CASTER_11"] = "[11] 암흑불길 의복"
L["WK_TR_CASTER_12"] = "[12] 재앙거미의 불타는 예복"
L["WK_TR_CASTER_13"] = "[13] 얼굴 없는 자의 수의 예복"
L["WK_TR_CASTER_14"] = "[14] 샤 껍질 예복"
L["WK_TR_CASTER_15"] = "[15] 천 갈래 지옥의 의복"
L["WK_TR_CASTER_16"] = "[16] 뿔 달린 악몽의 의복"
L["WK_TR_CASTER_A_09"] = "[9] 켈투자드의 의복"
L["WK_TR_CASTER_H_09"] = "[9] 굴단의 의복"
L["WR_CD_90"] = "황금왕 세트"
L["WR_DG_01"] = "D1: 용맹의 전투장비"
L["WR_DG_02"] = "D2: 무용의 전투장비"
L["WR_DG_03"] = "D3: 용자의 갑옷"
L["WR_DG_AQ_1"] = "굴하지 않는 힘의 전투장비"
L["WR_DG_AQ_2"] = "정복자의 전투장비"
L["WR_PVP_16"] = "[W1] 야성적인 (전투의 검투사 갑옷)"
L["WR_PVP_MELEE_14"] = "[14] 고통을 부르는 (전투의 검투사 갑옷)"
L["WR_PVP_MELEE_15"] = "[15] 자부심 가득한 (전투의 검투사 갑옷)"
L["WR_TR_01"] = "[1] 투지의 전투장비"
L["WR_TR_02"] = "[2] 격노의 전투장비"
L["WR_TR_03"] = "[3] 무쌍의 전투장비"
L["WR_TR_17"] = "[17] 블랙핸드의 전투장비"
L["WR_TR_18"] = "[18] 강철 분노의 전투장비"
L["WR_TR_MELEE_04"] = "[4] 전쟁인도자 전투장비"
L["WR_TR_MELEE_05"] = "[5] 파괴자의 전투장비"
L["WR_TR_MELEE_06"] = "[6] 맹공의 전투장비"
L["WR_TR_MELEE_07"] = "[7] 무쌍의 전투장비"
L["WR_TR_MELEE_08"] = "[8] 공성파괴자 전투장비"
L["WR_TR_MELEE_10"] = "[10] 이미야르 군주 전투장비"
L["WR_TR_MELEE_11"] = "[11] 대지의 전쟁판금 장비"
L["WR_TR_MELEE_12"] = "[12] 용감거인의 전쟁판금 장비"
L["WR_TR_MELEE_13"] = "[13] 거대괴수의 용판금 전투장비"
L["WR_TR_MELEE_14"] = "[14] 울려퍼지는 종소리의 전투판금 장비"
L["WR_TR_MELEE_15"] = "[15] 마지막 모구의 전투판금 장비"
L["WR_TR_MELEE_16"] = "[16] 선사 시대 약탈자의 전투판금 장비"
L["WR_TR_MELEE_A_09"] = "[9] 린의 전투장비"
L["WR_TR_MELEE_H_09"] = "[9] 헬스크림의 전투장비"
L["WR_TR_TANK_04"] = "[4] 전쟁인도자 갑옷"
L["WR_TR_TANK_05"] = "[5] 파괴자의 갑옷"
L["WR_TR_TANK_06"] = "[6] 맹공의 갑옷"
L["WR_TR_TANK_07"] = "[7] 무쌍의 판금장비"
L["WR_TR_TANK_08"] = "[8] 공성파괴자 판금장비"
L["WR_TR_TANK_10"] = "[10] 이미야르 군주 판금장비"
L["WR_TR_TANK_11"] = "[11] 대지의 전투판금 장비"
L["WR_TR_TANK_12"] = "[12] 용감거인의 전투판금 장비"
L["WR_TR_TANK_13"] = "[13] 거대괴수의 용판금 갑옷"
L["WR_TR_TANK_14"] = "[14] 울려퍼지는 종소리의 판금장비"
L["WR_TR_TANK_15"] = "[15] 마지막 모구의 판금장비"
L["WR_TR_TANK_16"] = "[16] 선사 시대 약탈자의 판금장비"
L["WR_TR_TANK_A_09"] = "[9] 린의 판금장비"
L["WR_TR_TANK_H_09"] = "[9] 헬스크림의 판금장비"
